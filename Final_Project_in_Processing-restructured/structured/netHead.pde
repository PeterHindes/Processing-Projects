//Libraries
  import ddf.minim.*;   //Need a diffrent sound library
    Minim minim;

//Classes
  //Variables
    Vars vars = new Vars();
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
  //UI
    UI ui = new UI();
  //Canvas
    Canvas canvas = new Canvas();
    //Camera
      Camera camera = new Camera();
      camera.Pan = camera.new Pan();


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

//System Functions
  void setup () {
    //size            (1000, 700);
    //siz = new int[] {1000, 700};
    fullScreen(2);
    //siz = new int[] {width, height};

    resources.setup();
  }

  void draw () {

    //Keyboard Stuff
    //Run the key handler every few mSeconds
    keyActions.repeat();

    //Bg Calc
    //Calculate The height of the image relative to the scaled width
    int quest = width/resources.backGrnd.width;
    int imgYscl = quest * resources.backGrnd.height;
    //Render
    //background(175);
    //image(resources.backGrnd, 0,0, width,imgYscl); //Background Image

    //Run
    canvas();

  }

//Keyboard Calling
  //Set Keys
  void keyPressed()  { keyHandler.press(); }

  //Handle Key Release
  void keyReleased() { keyHandler.release(); }

//End Of Program [Is this really necessary]
void stop() {
  resources.glassBreakMedium.close();
  minim.stop();
  super.stop();
}
