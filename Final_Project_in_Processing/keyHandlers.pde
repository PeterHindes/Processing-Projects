public class keyHandlers {

  //keys            UP     Down   RIGHT  LEFT   SHIFT  SPACE
  private boolean keys[] = {false, false, false, false, false, false};


  //Handle Keys To Actions
  //  Keys            UP     Down   RIGHT  LEFT   SHIFT
  //boolean keys[] = {false, false, false, false, false};
  public void repeat() {

    //Movement
      //Arrow Keys  UP     Down   RIGHT  LEFT   SHIFT
        if        (keys[0]) {

        } else if (keys[1]) {

        } else if (keys[2]) {
          playerPos[0]+=5;
        } else if (keys[3]) {
          playerPos[0]-=5;
        }
      //Shift
        if (keys[4])        {

        } else              {

        }

  }

  //  Keys            UP     Down   RIGHT  LEFT   SHIFT
  //boolean keys[] = {false, false, false, false, false};
  private void single() {

    //dialogue
      //Space
        if(keys[5]){
          if (dialogueMinor < dialogue[dialoguePrimary].length-1){    //Subtract one to match count to developerCount (start with 0)
            dialogueMinor++;
            print("Minor Up" + dialogueMinor);
          } else if (dialoguePrimary < dialogue.length-1){    //Subtract one to match count to developerCount (start with 0)
            dialoguePrimary++;
            print("Primary Up" + dialoguePrimary);
          } else {
            print("All Out\n");
          }
        }

  }


  public void press() {

    //Set Keys
    if (key == CODED) {
      switch(keyCode) {
        case UP:
          keys[0] = true;
          break;
        case DOWN:
          keys[1] = true;
          break;
        case RIGHT:
          keys[2] = true;
          break;
        case LEFT:
          keys[3] = true;
          break;
        case SHIFT:
          keys[4] = true;
          break;
      }
    } else {
      switch(key) {
        case ' ':
          keys[5] = true;
          break;
      }
    }

  }

  public void release() {

    //Run single event actions
      single();

    //Unset Keys
      if (key == CODED)   {
        switch(keyCode)   {
          case UP:
            keys[0] = false;
            break;
          case DOWN:
            keys[1] = false;
            break;
          case RIGHT:
            keys[2] = false;
            break;
          case LEFT:
            keys[3] = false;
            break;
          case SHIFT:
            keys[4] = false;
            break;
        }
      } else {
        switch(key)      {
          case ' ':
            keys[5] = false;
            break;
        }
      }

  }

}
