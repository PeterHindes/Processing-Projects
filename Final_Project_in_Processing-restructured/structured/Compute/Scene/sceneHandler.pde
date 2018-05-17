class SceneHandler {

  ScenePalette scenePalette = new ScenePalette();

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
    sceneIndex++;
    sceneVariant = variant;
  }
  public void reRun(boolean specialRespawn){//, int respawnVariant) {
    if (!specialRespawn) {
      setupS();
    } else {
      sceneVariant = srVariant[sceneIndex];
      setupS();
    }
  }

  public void setupS(){
    scenePalette.setupS(sceneTitle[sceneIndex], sceneVariant);
  }

  public void drawS(){
    scenePalette.drawS(sceneTitle[sceneIndex], sceneVariant);
  }

}
