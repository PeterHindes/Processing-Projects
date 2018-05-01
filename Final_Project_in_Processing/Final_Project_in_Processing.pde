//Variables
  int[] playerPos = {30,0};
  int floorLevel = 20;
  int time = 0;

  //keys            UP     Down   RIGHT  LEFT   SHIFT
  boolean keys[] = {false, false, false, false, false};


//Resources
  //Colors
    color[] msgBx = {0x3a3a4c38, #222e30};
  //External
    //Classes
      dialogueBox db = new dialogueBox();
    //Images
      //PImage martha1;
    //Fonts
      PFont titleFont;
      PFont mesageFont;
    //Sound


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

//System Functions
  void setup () {
    size           (1000, 700);
    siz = new int[]{1000, 700};

    externalClass.external();

    //Import External Resources
      //Images
        //martha1 = loadImage("martha-1.png");
      //Fonts
        titleFont = createFont("data/Font/Signika-Bold.ttf", 25, true);
        mesageFont = createFont("data/Font/EBGaramond-Regular.ttf", 20, true);
      //Sound

  }

  void draw () {

    //Run the key handler every few mSeconds
    time += millis();
    if (time > timeRequiredCurrent){
      keyHandler();
      time = 0;
    }

    //Render
    background(175);

    player();

    db.primary(
      2,
      "GOVERNMENT ANNOUNCEMENT",
      "Those infected by the outbreak CANNOT feel, think or remember any past experiences. "+
      "They are dangerous and MUST be killed ON SIGHT!"
    );
  }


//Custom Functions
  void player() {

    pushMatrix();

    translate(playerPos[0],  siz[1]-floorLevel-playerPos[1]);

    rect(0,0,  15,15);
    popMatrix();

  }


//Keyboard Managment
  //Set Keys
  void keyPressed() {
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
      }
    }
  }

  //Handle Keys To Actions
  //  Keys            UP     Down   RIGHT  LEFT   SHIFT
  //boolean keys[] = {false, false, false, false, false};
  void keyHandler() {

    //Shift
    if (keys[4])        {

    } else              {

    }

    //Arrow Keys
    if        (keys[0]) {

    } else if (keys[1]) {

    } else if (keys[2]) {
      playerPos[0]+=5;
    } else if (keys[3]) {
      playerPos[0]-=5;
    }

  }

  //Unset Keys
  void keyReleased() {
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
      }
    }
  }
