public class keyHandlers {


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
  public void single() {
    //dialogue
      //Space
        if(keys[5]){
          if (dialogueMinor < dialogue[dialoguePrimary].length-1){    //Subtract one to match count to developerCount (start with 0)
            dialogueMinor++;
            print("Minor Up");
          } else if (dialoguePrimary < dialogue.length-1){    //Subtract one to match count to developerCount (start with 0)
            dialoguePrimary++;
            print("Primary Up");
          } else {
            print("All Out\n");
          }
        }
  }


}
