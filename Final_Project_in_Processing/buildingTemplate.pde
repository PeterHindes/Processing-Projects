class buildings {
  void small(int rx, int ry){
    pushMatrix();
    translate(rx,ry);
    rect(0,0, -100,-600);
    popMatrix();
  }
}
