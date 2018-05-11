//Variables
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


//Resources
  //Libraries
    import ddf.minim.*;
      Minim minim;
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
      PImage[] marthaStill = new PImage[22];
      PImage[] marthaWalking = new PImage[3];
      PImage[] marthaRunning = new PImage[3];
      PImage[] marthaLadder = new PImage[3];
      PImage[] marthaStairs = new PImage[3];
    //Fonts
      PFont titleFont;
      PFont mesageFont;
    //Sound
      AudioSample glassBreakMedium;
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
        backGrnd = loadImage( "data/Img/Background/" + "betaInterior1-2d" + ".png" );
      //Sprites
        for ( int i = 0; i < marthaStill.length; i++ ) {
          String formatted = String.format("%02d", i);
          marthaStill[i]    = loadImage( "data/Img/Sprites/Martha/MarthaStill/"   + "sprite_" + formatted + ".png" );
          //marthaWalking[i]  = loadImage( "data/Img/Sprites/Martha/MarthaWalking/" + "sprite_" + formatted + ".png" );
          //marthaRunning[i]  = loadImage( "data/Img/Sprites/Martha/MarthaRunning/" + "sprite_" + formatted + ".png" );
          //marthaLadder[i]   = loadImage( "data/Img/Sprites/Martha/MarthaLadder/"  + "sprite_" + formatted + ".png" );
          //marthaStairs[i]   = loadImage( "data/Img/Sprites/Martha/MarthaStairs/"  + "sprite_" + formatted + ".png" );
        }
      //Fonts
        titleFont = createFont("data/Font/Signika-Bold.ttf", 25, true);
        mesageFont = createFont("data/Font/EBGaramond-Regular.ttf", 20, true);
      //Sound
      minim = new Minim(this);
      glassBreakMedium = minim.loadSample( "data/SoundEffects/" + "glass-break-medium" + ".wav" , 2048);
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


    //Bg Calc
    //Calculate The height of the image relative to the scaled width
    int quest = siz[0]/backGrnd.width;
    int imgYscl = quest * backGrnd.height;
    //Render
    //background(175);
    //image(backGrnd, 0,0, siz[0],imgYscl); //Background Image

    //Run

    //bild.small(50,50);

    canvas();

    db.primary(2,  titles[dialoguePrimary][dialogueMinor], dialogue[dialoguePrimary][dialogueMinor]);

  }

//Custom Functions

  void canvas() {
    pushMatrix();
    //if (/*Character X Position is greater than 80% of the screen*/) {
      /*keep the canvas moving so they never exceede 80% of the screen*/
    //} else if (/*Character X Position is less than 20% of the screen*/) {
      /*keep the canvas moving so they never go below 20% of the screen*/
    //}

    //World
    //A Perfectly Centered but Limited background image
    //Calculate The height of the image relative to the scaled width
    int quest = siz[0]/backGrnd.width;
    int imgYscl = quest * backGrnd.height;
    //Image
    image(backGrnd, 0,0, siz[0],imgYscl);
    //A Background image that has the proper height by default and is wider than the screen
    //image(backGrnd, 0,0);

    //Player
    player();

    //End
    popMatrix();

  }

  void player() {
    pushMatrix();

    translate(playerPos[0],  siz[1]-playerPos[1]);

    marthaCurrentVariant = marthaStill;

    float imageScale = 2.75f;
    //smooth(0);
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
  void keyPressed()  { kh.press(); glassBreakMedium.trigger(); }

  //Handle Key Release
  void keyReleased() { kh.release(); }

//End Of Program
void stop() {
  glassBreakMedium.close();
  minim.stop();
  super.stop();
}
