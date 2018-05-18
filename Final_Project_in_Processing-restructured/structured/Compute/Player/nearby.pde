class Nearby {
  String findNearestStr(int myId, int xBuffer, int yBuffer) {
    String ret = "Nothing";
    for(int i = 1; i < vars.objectLocs.length ; i++) {
      if (
        //Left Sid + Dist to Right+buffer :is greater than: left of target object
        vars.objectLocs[myId].x+vars.objectLocs[myId].sX + (xBuffer/2) > vars.objectLocs[i].x && //it is and because it needs to be close on right AND left //Left Of Object :: object on right side
        //left sid + lefted|buffer :is less than: left of target + dist to right
        vars.objectLocs[myId].x + -(vars.xDetec/2) < vars.objectLocs[i].x+vars.objectLocs[i].sX  //Right Of Object :: object on left side

      ) {
        ret = vars.objectLocs[i].objectName;
      }
    }
    return ret;
  }


  int findNearestInt(int myId, int xBuffer, int yBuffer) {
    int ret = 0;
    for(int i = 1; i < vars.objectLocs.length ; i++) {
      if (
        //Left Sid + Dist to Right+buffer :is greater than: left of target object
        vars.objectLocs[myId].x+vars.objectLocs[myId].sX + (xBuffer/2) > vars.objectLocs[i].x && //it is and because it needs to be close on right AND left //Left Of Object :: object on right side
        //left sid + lefted|buffer :is less than: left of target + dist to right
        vars.objectLocs[myId].x + -(vars.xDetec/2) < vars.objectLocs[i].x+vars.objectLocs[i].sX  //Right Of Object :: object on left side

      ) {
        ret = i;
      }
    }
    return ret;
  }
}
