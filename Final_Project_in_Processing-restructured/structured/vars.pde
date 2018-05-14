//Variables   [Move to separate class/file]
  int time = 0;
  int[] playerPos = {30,0};
  int floorLevel = 60;
  int dialoguePrimary = 0;
  int dialogueMinor = 0;
  //Sprites
    float marthaCurrentFrame = 0;
    float marthFrameIncrement = 0.5;

  //keys            UP     Down   RIGHT  LEFT   SHIFT  SPACE
  boolean keys[] = {false, false, false, false, false, false};


//Consistency variables
  //Time
    int timeRequiredWalk = 15000;
    int timeRequiredRun = 15000/2;
  //dialogueBox
    int dialoguePading = 10;
    int dialogueBoxPading = 15;
    int dialogueBoxCornerRadius = 25;
    int dialogueBoxTitlePading = 10;

//Dynamic Consistency variables
  int[] siz;
  int timeRequiredCurrent = timeRequiredWalk;
