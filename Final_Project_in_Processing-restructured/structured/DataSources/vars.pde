class Vars {

  //Variables   [Move to separate class/file]
    public static final int time = 0;
    //public static final int[] playerPos = {30,0};
    public static final int floorLevel = 60;
    public static final int dialoguePrimary = 0;
    public static final int dialogueMinor = 0;
    //Sprites
      public static final float marthaCurrentFrame = 0;
      public static final float marthFrameIncrement = 0.5;

    //keys            UP     Down   RIGHT  LEFT   SHIFT  SPACE
    //public static final boolean keys[] = {false, false, false, false, false, false};


  //Consistency variables
    //Time
      public static final int timeRequiredWalk = 15000;
      public static final int timeRequiredRun = 15000/2;
    //public static final dialogueBox
      public static final int dialoguePading = 10;
      public static final int dialogueBoxPading = 15;
      public static final int dialogueBoxCornerRadius = 25;
      public static final int dialogueBoxTitlePading = 10;

  //Dynamic Consistency variables
    int[] siz;
    int timeRequiredCurrent = timeRequiredWalk;

}
