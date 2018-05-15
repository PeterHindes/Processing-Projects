class KeyActions {

  //Keys To Actions
  //  Keys                       UP     Down   RIGHT  LEFT   SHIFT
  //boolean vars.keys[] = {false, false, false, false, false};
  public void repeat() {

    //Movement
      //Arrow Keys  UP     Down   RIGHT  LEFT   SHIFT
        if        (vars.keys[0]) {

        } else if (vars.keys[1]) {

        } else if (vars.keys[2]) {
          vars.playerPos.x+=5;
        } else if (vars.keys[3]) {
          vars.playerPos.x-=5;
        }
      //Shift
        if (vars.keys[4])        {

        } else              {

        }

  }

  //  Keys                       UP     Down   RIGHT  LEFT   SHIFT
  //boolean vars.keys[] = {false, false, false, false, false};
  private void single() {

    //dialogue
      //Space
        if(vars.keys[5]){
          if (vars.dialogueMinor < dialoguePalette.Dialogue[vars.dialoguePrimary].length-1){    //Subtract one to match count to developerCount (start with 0)
            vars.dialogueMinor++;
            //print("Minor Up " + vars.dialogueMinor + " \n");
          } else if (vars.dialoguePrimary < dialoguePalette.Dialogue.length-1){    //Subtract one to match count to developerCount (start with 0)
            vars.dialoguePrimary++;
            //print("Primary Up " + vars.dialoguePrimary + " \n");
          } else {
            //print("All Out\n");
          }
        }

  }

}
