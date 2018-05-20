
//2d Array Convention, y first x second
boolean[][] board = new boolean[10][5];
boolean[][] shape = new boolean[4][2];

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

void settings( ) {
  size(int(500*0.75),int(1000*0.75));
}


//Vars
float sizeToSpacingRatio = 1f/5f;
int brickSize = 25;
int brickSpacing = int(brickSize*sizeToSpacingRatio);

void setup( ) {
  shape=zShap;

  //Put Shape On Board
  for (int i=0;  i<shape[0].length;  i++) {
    for (int u=0;  u<shape.length;  u++) {
      board[u][i] = board[u][i] | zShap[u][i];
    }
  }
}

void draw( ) {
  update();
  drawBoard();
}

void update( ) {

}

int ranShap( ) {
  return ceil(random(0,5))-1;
}

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
}
int indexToPos( int indx , boolean vert ) {
  int ret;
  if (vert){
    ret = height-(invertRange(0,indx,board.length) * (brickSize+brickSpacing));
  } else {
    ret = indx * (brickSize+brickSpacing) + brickSpacing;
  }
  return ret;
}
int invertRange( int botm , int num , int tp ) {
  int mid = (botm + tp) /2;
  int dif = mid - num;
  int ret = mid + dif;
  return ret;
}
