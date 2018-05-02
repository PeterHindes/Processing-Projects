
int[] rectPos = {25,25};
int[] rectSize = {75,45};

void setup( ) {
  size(1100,900);
  fill(0,255,0);
}

void draw( ){
  background(45);
  rect(rectPos[0],rectPos[1],  rectSize[0],rectSize[1]);
}

void mouseReleased() {
  if ( mouseX > rectPos[0] && mouseX < rectPos[0]+rectSize[0]  &&  mouseY>rectPos[1] && mouseY<rectPos[1]+rectSize[1] ) {
    fill(255,0,0);
  }
}

void mousePressed() {
  fill(0,255,0);
}
