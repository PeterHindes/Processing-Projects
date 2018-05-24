//2d Array Convention, y first x second
boolean[][] board = new boolean[10][5];

//Actual Shapes
boolean[][] oShap = {
  {false, false},
  {false, false},
  {true,  true },
  {true,  true }
};
boolean[][] iShap = {
  {true,  false},
  {true,  false},
  {true,  false},
  {true,  false}
};
boolean[][] sShap = {
  {false, false},
  {true,  false},
  {true,  true },
  {false, true }
};
boolean[][] zShap = {
  {false, false},
  {false, true },
  {true,  true },
  {true,  false}
};
boolean[][] lShap = {
  {false, false},
  {true,  false},
  {true,  false},
  {true,  true }
};
boolean[][] jShap = {
  {false, false},
  {false, true },
  {false, true },
  {true,  true }
};
boolean[][] tShap = {
  {false, false},
  {true,  false},
  {true,  true },
  {true,  false}
};


//Currently Falling Shape
boolean[][] shape = new boolean[4][2];
Timer nxtFrm = new Timer();
//Board before current shape (for refrence)
boolean[][] lastBoard = new boolean[10][5];


//Vars
float sizeToSpacingRatio = 1f/5f;
int brickSize = 25;
int brickSpacing = int(brickSize*sizeToSpacingRatio);
class Offset { int y=0; int x=0; } Offset offset = new Offset();


//Setup
void settings( ) {
  float scale = 0.5;
  size(int(500*scale),int(1000*scale));
}
void setup( ) {
  shape=sShap;
  nxtFrm.start();
}

//Loop
void draw( ) {
  update();
  drawBoard();
}
void update( ) {
  shapeDrop();
  shapeSet();
}

void shapeSet( ) {
  //Clear Brick Form Board [nuke edition]
  for (int i=0;  i<board[0].length;  i++) {
    for (int u=0;  u<board.length;  u++) {
      board[u][i]=lastBoard[u][i];
    }
  }
  //Put Shape On Board
  for (int i=0;  i<shape[0].length;  i++) {
    for (int u=0;  u<shape.length;  u++) {
      //unset ghost
      //board[u+offset.y][i+offset.x] = lastBoard[u+offset.y][i+offset.x];
      //set shape
      board[u+offset.y][i+offset.x] = board[u+offset.y][i+offset.x] | shape[u][i];
    }
  }
}

//Set new pice up
void nextShap( ) {
  //Warn
  print("Next Pice\n");

  //Back up the baord ////There is an issue here that is causing ghost tiles
  for (int i=0;  i<board[0].length;  i++) {
    for (int u=0;  u<board.length;  u++) {
      lastBoard[u][i]=board[u][i];
    }
  }
  //debugBoard();

  //Reset offsets
  offset.y=0;offset.x=0;

  //Set a new shape
  int riteNao = ranShap();
  print (riteNao + "\n");
  switch (riteNao) {
    case 0:
      shape=oShap;
      break;
    case 1:
      shape=iShap;
      break;
    case 2:
      shape=sShap;
      break;
    case 3:
      shape=zShap;
      break;
    case 4:
      shape=lShap;
      break;
    case 5:
      shape=jShap;
      break;
    case 6:
      shape=tShap;
      break;

    default:
      shape=lShap;
      break;
  }
}

//Check below pice
///You will eventualy have to handle convex shapes with more complex systems
boolean dropCheck( ) {
  boolean ret = false; //What we retun, false by default
  for (int i=0;  i<shape[0].length;  i++) {
    //x position for test
    int checking = i+offset.x; //The offset + the index we are checking
    //Right Below the shape
    int cHite = offset.y+shape.length; //Offset in the y + the hight of the shape its self

    //cHite Corection for convexions    [[Not Working]]
    print(shape[shape.length-1][i] + " ");
    if ( !shape[shape.length-1][i] ) {
      cHite--;
      print("Convexion\n");
    }
    print(cHite + "\n");

    if(cHite < board.length){ //Array Bounds protection
      if(board[cHite][checking] && shape[shape.length-1][i]){ //This dosent check for convex parts like the left of the z pice
        ret = true;
        print("Its under us!!!\n");
      }
    } else {
      ret = true;
      print("Were at the bottom :)\n");
    }
  }
  return ret;
}
//Make the current pice move down
void shapeDrop( ) {
  if(dropCheck()) { //Are we touching down?
    //Go to next shape and solidify current one
    nextShap();
  } else { //If not lets drop down another
    //Array Bounds Protection
    if(offset.y+shape.length < board.length){
      if(nxtFrm.count() > 500){ //Wait 500ms or 1/2sec
        offset.y++; //Send board offset of peice down one
        nxtFrm.start(); //Reset Timer
      }
    }
  }
}

//Draw the board to the screen and !nothing else!
void drawBoard( ) {
  for (int i=0;  i<board[0].length;  i++) {
    for (int u=0;  u<board.length;  u++) {
      if (board[u][i]) { //Chose the collor based on true or false //Red for true
        fill(255,0,0);
      } else if(u==offset.y && i==offset.x) { //Highlight the offset square
        //fill(0,0,255);
      } else { //Make all other tiles green
        fill(0,255,0);
      }
      rect(indexToPos(i,false),indexToPos(u,true),brickSize,brickSize); //Draw a tile
    }
  }
}

//Maths
//Convert an array index to a point on screen for a square tile to draw
int indexToPos( int indx , boolean vert ) {
  int ret;
  if (vert){
    ret = height-(invertRange(0,indx,board.length) * (brickSize+brickSpacing));
  } else {
    ret = indx * (brickSize+brickSpacing) + brickSpacing;
  }
  return ret;
}
//Fling a number to the other side of the middle of a range
int invertRange( int botm , int num , int tp ) {
  int mid = (botm + tp) /2;
  int dif = mid - num;
  int ret = mid + dif;
  return ret;
}
//Return random number between 1 and 7 that has been shifted down 1 (0-6) [7 Posibilities]
int ranShap( ) {
  return ceil(random(0,7))-1;
}

//Keyboard
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      if (!(offset.x-1 < 0)){
        offset.x--;
      }
    } else if (keyCode == RIGHT) {
      if (!(offset.x+shape[0].length+1 > board[0].length)){
        offset.x++;
      }
    }
  }
}

//Debuging
void debugBoard( ) {
  for (int u=0;  u<board.length;  u++) {
    for (int i=0;  i<board[0].length;  i++) {
      if(board[u][i]){
        print(board[u][i] + "  ");
      }else{
        print(board[u][i] + " ");
      }
    }
    print("\n");
  }
  print("\n\n");
}
