//Variables
  int time = 0;
  int[] playerPos = {30,0};
  int floorLevel = 120;
  int dialoguePrimary = 0;
  int dialogueMinor = 0;
  //Sprites
    float marthaCurrentFrame = 0;
    float marthFrameIncrement = 0.05;

  //keys            UP     Down   RIGHT  LEFT   SHIFT  SPACE
  boolean keys[] = {false, false, false, false, false, false};


//Resources
  //External
    //Classes
      dialogue dia = new dialogue();
      dialogueBox db = new dialogueBox();
      keyHandlers kh = new keyHandlers();
    //Images
      PImage[] marthaCurrentVariant;
      PImage[] marthaStill = new PImage[3];
      PImage[] marthaWalking = new PImage[3];
      PImage[] marthaRunning = new PImage[3];
      PImage[] marthaLadder = new PImage[3];
      PImage[] marthaStairs = new PImage[3];
    //Fonts
      PFont titleFont;
      PFont mesageFont;
    //Sound
  //Palletes
    //Colors
      color[] msgBx = {0x3a3a4c38, #222e30};
    //Dialogue
      String[][] dialogue = dia.setupDialogue();  //Dialogue setup in external file dialogue.pde
      String[][] titles = dia.setupTitles();


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

    //Import External Resources
      //Single Images
        //marthaStill = loadImage("data/Img/Org/Martha.gif");
      //Sprite Images
        for ( int i = 0; i < marthaStill.length; i++ ) {
          marthaStill[i] = loadImage( "data/Img/Org/MarthaStill/" + i + ".png" );
          marthaWalking[i] = loadImage( "data/Img/Org/MarthaWalking/" + i + ".png" );
          marthaRunning[i] = loadImage( "data/Img/Org/MarthaRunning/" + i + ".png" );
          marthaLadder[i] = loadImage( "data/Img/Org/MarthaLadder/" + i + ".png" );
          marthaStairs[i] = loadImage( "data/Img/Org/MarthaStairs/" + i + ".png" );
        }
      //Fonts
        titleFont = createFont("data/Font/Signika-Bold.ttf", 25, true);
        mesageFont = createFont("data/Font/EBGaramond-Regular.ttf", 20, true);
      //Sound

  }

  void draw () {

    //Run the key handler every few mSeconds
    //Open For Discusion Should we move this to the key managment file *****
    time += millis();
    if (time > timeRequiredCurrent && keyPressed){
      kh.repeat();
      time = 0;
    }

    //Render
    background(175);

    player();

    /*    Auto Cascading Title Fetch [incomplete] [pita]
    String titleProper;
    if(!(titles[dialoguePrimary][dialogueMinor] == ":;")){
      titleProper = titles[dialoguePrimary][dialogueMinor];
    } else {

      int dialogueMinorProper = dialogueMinor;
      int dialoguePrimaryProper = dialoguePrimary;

      while (titles[dialoguePrimaryProper][dialogueMinorProper] == ":;") {
        if (dialogueMinorProper > 0) {
          dialogueMinorProper--;
        } else if (dialoguePrimaryProper > 0) {
          dialoguePrimaryProper--;
          dialogueMinorProper = dialogueMinor;
        } else {
          print("Error all the way backed up!\n");
        }
      }
      titleProper = titles[dialoguePrimaryProper][dialogueMinorProper];
    }*/


    db.primary(2,  titles[dialoguePrimary][dialogueMinor], dialogue[dialoguePrimary][dialogueMinor]);

  }


//Custom Functions
  void player() {
    pushMatrix();

    translate(playerPos[0],  siz[1]-playerPos[1]);

    marthaCurrentVariant = marthaStill;

    image(marthaCurrentVariant[int(marthaCurrentFrame)],0,-floorLevel-marthaCurrentVariant[int(marthaCurrentFrame)].height);
    if (marthaCurrentFrame < marthaCurrentVariant.length-marthFrameIncrement) {
      marthaCurrentFrame+=marthFrameIncrement;
    } else {
      marthaCurrentFrame=0;
    }

    popMatrix();
  }


//Keyboard Managment
  //Set Keys
  void keyPressed()  { kh.press(); }

  //Handle Key Release
  void keyReleased() { kh.release(); }
