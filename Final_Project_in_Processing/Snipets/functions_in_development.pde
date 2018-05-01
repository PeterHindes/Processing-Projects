int[] playerPos = {30,0}
int floorLevel = 20;

void player() {

  pushMatrix();

  translate(playerPos[0],siz[1]-floorLevel-playerPos[1])

  rect(0,0,  15,15);
  popMatrix()

}
