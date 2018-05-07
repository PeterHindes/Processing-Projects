class buildings {

  private float smallXYratio = 10f/13f;
  private int smallScale = 200;
  private float smallX = smallScale*smallXYratio;
  private float smallY = smallScale/smallXYratio;

  void small(int rx, int ry){
    pushMatrix();
    translate(rx,siz[1]-ry);

    //print(smallXYratio + "  " + smallX + " " + smallY + "\n");

    rect(0,0,  int(smallX), -int(smallY));

    popMatrix();
  }
}
