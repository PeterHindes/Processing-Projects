public class KeyHandler {

  public void press() {

    //Set Keys
    if (key == CODED) {
      switch(keyCode) {
        case UP:
          vars.keys[0] = true;
          break;
        case DOWN:
          vars.keys[1] = true;
          break;
        case RIGHT:
          vars.keys[2] = true;
          break;
        case LEFT:
          vars.keys[3] = true;
          break;
        case SHIFT:
          vars.keys[4] = true;
          break;
      }
    } else {
      switch(key) {
        case ' ':
          vars.keys[5] = true;
          break;
      }
    }

  }

  public void release() {

    //Run single event actions
      keyActions.single();

    //Unset Keys
      if (key == CODED)   {
        switch(keyCode)   {
          case UP:
            vars.keys[0] = false;
            break;
          case DOWN:
            vars.keys[1] = false;
            break;
          case RIGHT:
            vars.keys[2] = false;
            break;
          case LEFT:
            vars.keys[3] = false;
            break;
          case SHIFT:
            vars.keys[4] = false;
            break;
        }
      } else {
        switch(key)      {
          case ' ':
            vars.keys[5] = false;
            break;
        }
      }

  }

}
