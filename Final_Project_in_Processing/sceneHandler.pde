class sHandlers {

  Scene sn = new Scene();

  int sceneIndex = 0;
  int sceneVariant = 1;
  String[] sceneTitle = {
    "First",
    "Second"
  };
  boolean[] sceneSR = {   //Special Respawn boolean
    false,
    false
  };
  int[] srVariant = {   //Special Respawn variant [default 1]
    1,
    1
  };


  public void nextScene(int variant){
    sceneN[sceneIndex] = 0;
    sceneIndex++;
    sceneN[sceneIndex] = variant;
  }
  public void reRun(boolean specialRespawn){//, int respawnVariant) {
    if (!specialRespawn) {
      setupS();
    } else {
      sceneN[sceneIndex] = variant;
    }
  }

  public void setupS(){
    sn.setupS(sceneTitle[sceneIndex], sceneVariant);
  }

  public void drawS(){
    sn.drawS(sceneTitle[sceneIndex], sceneVariant);
  }

}
