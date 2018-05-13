public class KeyHandler {

  //keys                             UP      Down     RIGHT     LEFT      SHIFT  SPACE
  public static boolean keys[] =    {false,  false ,  false  ,  false ,   false, false  };
  public static String keyNames[] = {"Up" ,  "Down",  "Right",  "Left", "Shift", "Space"};





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
