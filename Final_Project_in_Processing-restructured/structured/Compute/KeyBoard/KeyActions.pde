class KeyActions {

  //Keys To Actions
  //  Keys                       UP     Down   RIGHT  LEFT   SHIFT
  //boolean keyHandler.keys[] = {false, false, false, false, false};
  public void repeat() {

    //Movement
      //Arrow Keys  UP     Down   RIGHT  LEFT   SHIFT
        if        (keyHandler.keys[0]) {

        } else if (keyHandler.keys[1]) {

        } else if (keyHandler.keys[2]) {
          playerPos[0]+=5;
        } else if (keyHandler.keys[3]) {
          playerPos[0]-=5;
        }
      //Shift
        if (keyHandler.keys[4])        {

        } else              {

        }

  }

  //  Keys                       UP     Down   RIGHT  LEFT   SHIFT
  //boolean keyHandler.keys[] = {false, false, false, false, false};
  private void single() {

    //dialogue
      //Space
        if(keyHandler.keys[5]){
          if (dialogueMinor < dialoguePalette.Dialogue[dialoguePrimary].length-1){    //Subtract one to match count to developerCount (start with 0)
            dialogueMinor++;
            //print("Minor Up " + dialogueMinor + " \n");
          } else if (dialoguePrimary < dialoguePalette.Dialogue.length-1){    //Subtract one to match count to developerCount (start with 0)
            dialoguePrimary++;
            //print("Primary Up " + dialoguePrimary + " \n");
          } else {
            //print("All Out\n");
          }
        }

  }

}
