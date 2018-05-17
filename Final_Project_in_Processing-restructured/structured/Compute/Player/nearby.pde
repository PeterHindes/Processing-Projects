class Nearby {
  String findNearestStr(int myId, int xBuffer, int yBuffer) {

    for(int i = 1; i < tables.length ; i++) {
      if (
        //Left Sid + Dist to Right+buffer :is greater than: left of target object
        tables[myId].x+tables[myId].sX + (xBuffer/2) > tables[i].x && //Wait, why is it an &, investigate the logic //Left Of Object :: object on right side
        //left sid + lefted|buffer :is less than: left of target + dist to right
        tables[myId].x + -(xDetec/2) < tables[i].x+tables[i].sX  //Right Of Object :: object on left side

      ) {
        return tables[i].objectName;
      }
    }

  }
  int findNearestInt(int myId) {

  }
}
