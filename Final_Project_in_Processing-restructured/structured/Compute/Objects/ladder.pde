class Ladder {
  Timer ladderTimer = new Timer();
  void setup() {
    vars.objectLocs[1].objectName = "ladder";
    vars.objectLocs[1].x = 125;
    vars.objectLocs[1].y = 100;
    vars.objectLocs[1].sX = 25;
    vars.objectLocs[1].sY = -75;
  }
  void draw(){
    fill(100,20,20);
    if (ladderTimer.count() < 1000) { //Rearchitect
      stroke(200);
    } else {
      stroke(50);
    }
    rect(vars.objectLocs[1].x,vars.objectLocs[1].y,vars.objectLocs[1].sX,vars.objectLocs[1].sY);
  }
  void highlight() {

  }
}
