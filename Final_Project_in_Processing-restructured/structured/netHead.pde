//Libraries
  import ddf.minim.*;   //Need a diffrent sound library
    Minim minim;

//Classes
  //Variables
    Vars vars = new Vars();
  //Resources
    Resources resources = new Resources();
  //Keyboard
    KeyHandler keyHandler = new KeyHandler();
    KeyActions keyActions = new KeyActions();
  //Canvas
    Canvas canvas = new Canvas();
    //Camera
      Camera camera = new Camera();
    //UI
      UI ui = new UI();
    //Dialogue
      DialoguePalette dialoguePalette = new DialoguePalette();
      DialogueBox dialogueBox = new DialogueBox();
    //Scene
      SceneHandler sceneHandler = new SceneHandler();
      ScenePalette scenePalette = new ScenePalette();
    //Player
      Player player = new Player();



/*/Variables   [Move to separate class/file]
  int time = 0;
  int[] playerPos = {30,0};
  int vars.floorLevel = 60;
  int vars.dialoguePrimary = 0;
  int vars.dialogueMinor = 0;
  //Sprites
    float vars.marthaCurrentFrame = 0;
    float vars.marthaFrameIncrement = 0.5;

  //keys            UP     Down   RIGHT  LEFT   SHIFT  SPACE
  boolean keys[] = {false, false, false, false, false, false};


//Consistency variables
  //Time
    int timeRequiredWalk = 15000;
    int timeRequiredRun = 15000/2;
  //dialogueBox
    int vars.dialoguePading = 10;
    int vars.dialogueBoxPading = 15;
    int dialogueBoxCornerRadius = 25;
    int vars.dialogueBoxTitlePading = 10;

//Dynamic Consistency variables
  int[] siz;
  int timeRequiredCurrent = timeRequiredWalk;
*/
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
    canvas.draw();

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
