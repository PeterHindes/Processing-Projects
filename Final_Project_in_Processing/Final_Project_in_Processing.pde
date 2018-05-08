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
  //Libraries
    import processing.sound.*;
      //Suplimentary Sound variables
      AudioDevice myAudioServer;
  //External
    //Classes
      dialogue dia = new dialogue();
      dialogueBox db = new dialogueBox();
      buildings bild = new buildings();
      keyHandlers kh = new keyHandlers();
    //Images
      PImage backGrnd;
    //Sprites
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
      SoundFile glassBreakMedium;
  //Palletes
    //Colors
      color[] msgBx = {#634275, #222e30};
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
        backGrnd = loadImage( "data/Img/Background/" + "betaInterior1" + ".png" );
      //Sprites
        for ( int i = 0; i < marthaStill.length; i++ ) {
          marthaStill[i]    = loadImage( "data/Img/Sprites/Martha/MarthaStill/" + i + ".png" );
          marthaWalking[i]  = loadImage( "data/Img/Sprites/Martha/MarthaWalking/" + i + ".png" );
          marthaRunning[i]  = loadImage( "data/Img/Sprites/Martha/MarthaRunning/" + i + ".png" );
          marthaLadder[i]   = loadImage( "data/Img/Sprites/Martha/MarthaLadder/" + i + ".png" );
          marthaStairs[i]   = loadImage( "data/Img/Sprites/Martha/MarthaStairs/" + i + ".png" );
        }
      //Fonts
        titleFont = createFont("data/Font/Signika-Bold.ttf", 25, true);
        mesageFont = createFont("data/Font/EBGaramond-Regular.ttf", 20, true);
      //Sound
        myAudioServer = new AudioDevice(this, 44100, 128);
        glassBreakMedium = new SoundFile(this, "data/SoundEffects/" + "glass-break-medium" + ".wav");
        //glassBreakMedium = new loadSound("data/SoundEffects/glass-break-medium.wav");
        glassBreakMedium.play();
  }

  void draw () {

    //Run the key handler every few mSeconds
    //Open For Discusion Should we move this to the key managment file *****
    if (keyPressed){
      time += millis();
      if (time > timeRequiredCurrent){
        kh.repeat();
        time = 0;
      }
    }

    //Render
    //background(175);
    image(backGrnd, 0,0, siz[0],backGrnd.height); //Background Image

    //bild.small(50,50);

    player();

    db.primary(2,  titles[dialoguePrimary][dialogueMinor], dialogue[dialoguePrimary][dialogueMinor]);

  }

//Custom Functions
  void player() {
    pushMatrix();

    translate(playerPos[0],  siz[1]-playerPos[1]);

    marthaCurrentVariant = marthaStill;

    float imageScale = 2.75f;
    smooth(0);
    image(marthaCurrentVariant[int(marthaCurrentFrame)],
      0  ,
      -floorLevel - (marthaCurrentVariant[int(marthaCurrentFrame)].height * imageScale)  ,
      marthaCurrentVariant[int(marthaCurrentFrame)].height * imageScale  ,  //Image is scaled, need to figure out how to use aliased image, or manualy resize it
      marthaCurrentVariant[int(marthaCurrentFrame)].width * imageScale
    );

    //Advance Character Frame
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
