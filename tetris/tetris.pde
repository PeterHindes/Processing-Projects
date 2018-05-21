//2d Array Convention, y first x second
boolean[][] board = new boolean[10][5];

//Actual Shapes
boolean[][] lShap = {
  {false, false},
  {true,  false},
  {true,  false},
  {true,  true }
};
boolean[][] tShap = {
  {false, false},
  {true,  false},
  {true,  true },
  {true,  false}
};
boolean[][] sqShap = {
  {false, false},
  {false, false},
  {true,  true },
  {true,  true }
};
boolean[][] linShap = {
  {true,  false},
  {true,  false},
  {true,  false},
  {true,  false}
};
boolean[][] zShap = {
  {false, false},
  {true,  false},
  {true,  true },
  {false, true }
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
  shape=zShap;
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
  //Put Shape On Board
  for (int i=0;  i<shape[0].length;  i++) {
    for (int u=0;  u<shape.length;  u++) {
      //unset ghost
      board[u+offset.y][i+offset.x] = lastBoard[u+offset.y][i+offset.x];
      //set shape
      board[u+offset.y][i+offset.x] = board[u+offset.y][i+offset.x] | shape[u][i];
    }
  }
}

//Set new pice up
void nextShap( ) {
  //Warn
  print("Next Pice\n");

  //Back up the baord
  lastBoard=board;

  //Reset offsets
  offset.y=0;offset.x=0;

  /*/Set a new shape
  int riteNao = ranShap();
  switch (riteNao) {
    case 0:
      shape=lShap;
      break;
    default:
      shape=zShap;
      break;
  }*/
}

//Check below pice
///You will eventualy have to handle convex shapes with more complex systems
boolean dropCheck( ) {
  boolean ret = false;
  for (int i=0;  i<shape[0].length;  i++) {
    //x positionfor test
    int checking = i+offset.x;
    //Right Below the shape
    int cHite = offset.y+shape.length;
    //Array Bounds protection
    if(cHite < board.length){
      if(board[cHite][checking]){
        print("Its under us!!!\n");
        ret = true;
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
  if(dropCheck()) {
    //Go to next shape and solidify current one
    nextShap();
  }else{
    //Array Bounds Protection
    if(offset.y+shape.length < board.length){
      if(nxtFrm.count() > 500){
        offset.y++;
        nxtFrm.start();
      }
    }
  }
}

//Draw the board to the screen and !nothing else!
void drawBoard( ) {
  for (int i=0;  i<board[0].length;  i++) {
    for (int u=0;  u<board.length;  u++) {
      if(board[u][i]){
        fill(255,0,0);
      } else {
        fill(0,255,0);
      }
      rect(indexToPos(i,false),indexToPos(u,true),brickSize,brickSize);
    }
  }
  debugBoard();
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
//Return random number between 1 and 5 that has been shifted down 1 for array use
int ranShap( ) {
  return ceil(random(0,5))-1;
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
