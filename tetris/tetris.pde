
//2d Array Convention, y first x second
boolean[][] board = new boolean[10][5];
//boolean[][] falling = new boolean[10][5];
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

void setup( ) {
  //board[0][0] = true;
  shape=zShap;

  /*/Put Shape On Board
  for (int i=0;  i<shape.length;  i++){
    for (int u=0;  u<shape[i].length;  u++){
      print(board[i][u] | zShap[i][u]);
      board[i][u] = board[i][u] | zShap[i][u];
    }
    print("\n");
  }*/
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
  for (int i=0;  i<board.length;  i++){
    for (int u=0;  u<board[i].length;  u++){
      //print(board[i][u]);
      rect(indexToPos(i),indexToPos(u),20,20);
    }
    //print("\n");
  }
  //print("\n\n\n\n");
}
int indexToPos( int indx ) {
  return indx * (20+5);
}
