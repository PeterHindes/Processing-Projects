
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
//test
void settings( ) {
  size(int(500*0.75),int(1000*0.75));
}

void setup( ) {
  board = zShap;  //Dont Overwrite the wrest
}

void draw( ) {
  update();


}

void update( ) {
  print(ranShap() +"\n");
}

int ranShap( ) {
  return ceil(random(0,5))-1;
}
