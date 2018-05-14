//Libraries
  import ddf.minim.*;
    Minim minim;

//Classes
  //Variables
  //Resources
    Resources resources = new Resources();
  //Dialogue
    DialoguePalette dialoguePalette = new DialoguePalette();
    DialogueBox dialogueBox = new DialogueBox();
  //Keyboard
    KeyHandler keyHandler = new KeyHandler();
    KeyActions keyActions = new KeyActions();
  //Scene
    SceneHandler sceneHandler = new SceneHandler();
    ScenePalette scenePalette = new ScenePalette();


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
    //size            (1000, 700);
    //siz = new int[] {1000, 700};
    fullScreen(2);
    siz = new int[]{width, height};

    resources.setup();
  }

  void draw () {

    //Run the key handler every few mSeconds
    //Open For Discusion Should we move this to the key managment file *****
    if (keyPressed){
      time += millis();
      if (time > timeRequiredCurrent){
        keyActions.repeat();
        time = 0;
      }
    }


    //Bg Calc
    //Calculate The height of the image relative to the scaled width
    int quest = siz[0]/resources.backGrnd.width;
    int imgYscl = quest * resources.backGrnd.height;
    //Render
    //background(175);
    //image(resources.backGrnd, 0,0, siz[0],imgYscl); //Background Image

    //Run

    //bild.small(50,50);

    canvas();

    dialogueBox.primary(2,  dialoguePalette.Titles[dialoguePrimary][dialogueMinor], dialoguePalette.Dialogue[dialoguePrimary][dialogueMinor]);

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
    int quest = siz[0]/resources.backGrnd.width;
    int imgYscl = quest * resources.backGrnd.height;
    //Image
    image(resources.backGrnd, 0,0, siz[0],imgYscl);
    //A Background image that has the proper height by default and is wider than the screen
    //image(resources.backGrnd, 0,0);

    //Player
    player();

    //End
    popMatrix();

  }

  void player() {
    pushMatrix();

    translate(playerPos[0],  siz[1]-playerPos[1]);

    resources.marthaCurrentVariant = resources.marthaStill;

    float imageScale = 2.75f;
    //smooth(0);
    image(resources.marthaCurrentVariant[int(marthaCurrentFrame)],
      0  ,
      -floorLevel - (resources.marthaCurrentVariant[int(marthaCurrentFrame)].height * imageScale)  ,
      resources.marthaCurrentVariant[int(marthaCurrentFrame)].height * imageScale  ,  //Image is scaled, need to figure out how to use aliased image, or manualy resize it
      resources.marthaCurrentVariant[int(marthaCurrentFrame)].width * imageScale
    );

    //Advance Character Frame
    if (marthaCurrentFrame < resources.marthaCurrentVariant.length-marthFrameIncrement) {
      marthaCurrentFrame+=marthFrameIncrement;
    } else {
      marthaCurrentFrame=0;
    }

    popMatrix();
  }


//Keyboard Managment
  //Set Keys
  void keyPressed()  { keyHandler.press(); }//resources.glassBreakMedium.trigger(); }

  //Handle Key Release
  void keyReleased() { keyHandler.release(); }

//End Of Program
void stop() {
  resources.glassBreakMedium.close();
  minim.stop();
  super.stop();
}
