class Vars {
  //Variables
    public int floorLevel = 60;
    public int dialoguePrimary = 0;
    public int dialogueMinor = 0;

    //Player
      public class PlayerPos { int x = 30; int y = 0; }
    //Objects
      class DataTable {
        String objectName;
        int x;
        int y;
        int sX;
        int sY;
        void set(String iobjectName, int ix,int iy, int isX,int isY) {
          objectName = iobjectName;
          x = ix;
          y = iy;
          sX = isX;
          sY = isY;
        }
        void setPos(int ix, int iy) {
          x = ix;
          y = iy;
        }
      }
    //Sprite Data
      public float marthaCurrentFrame = 0;
    //Keyboard
      //Keys                      UP      Down     LEFT      RIGHT     SHIFT  SPACE
      public boolean keys[] =    {false,  false ,  false  ,  false ,   false, false  };
      public class InputAxis { int x = 0; int y = 0; }

  //Var Class Clarification
    PlayerPos playerPos = new PlayerPos();
    InputAxis inputAxis = new InputAxis();
    DataTable[] objectLocs = new DataTable[3];


  //Constants (For Consistency)
    //Walk
      public static final int walkSpeed = 15;
      public static final int walkRunRatio = /*run*/4/3/*walk*/;
      public static final int runSpeed = walkSpeed * walkRunRatio;
    //Dialogue
      public static final int dialoguePading = 10;
      public static final int dialogueBoxPading = 15;
      public static final int dialogueBoxCornerRadius = 25;
      public static final int dialogueBoxTitlePading = 10;
    //Sprites
      float marthaFrameIncrement = 0.5;
    //Keyboard
      public String keyNames[] = {"Up" ,  "Down",  "Right",  "Left", "Shift", "Space"};

  //Consistency Variables With Setup Required

}
