class Vars {
  //Variables
    public int time = 0;
    public int floorLevel = 60;
    public int dialoguePrimary = 0;
    public int dialogueMinor = 0;

    //Player
      public class PlayerPos { int x = 30; int y = 0; }
    //Sprite Data
      public float marthaCurrentFrame = 0;
    //Keyboard
      public boolean keys[] =    {false,  false ,  false  ,  false ,   false, false  };

  //Var Class Clarification
    PlayerPos playerPos = new PlayerPos();


  //Constants (For Consistency)
    //Time
      //public static final int timeRequiredWalk = 15000;
      //public static final int timeRequiredRun = 15000/2;
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
    //Keyboard
      public String keyNames[] = {"Up" ,  "Down",  "Right",  "Left", "Shift", "Space"};

  //Consistency Variables With Setup Required

}
