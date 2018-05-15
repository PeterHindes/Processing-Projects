//Libraries
  import ddf.minim.*;   //Need a diffrent sound library
    Minim minim;

//Classes
  //Data
    //Variables
      Vars vars = new Vars();
    //Resources
      Resources resources = new Resources();

  //Compute
    Compute compute = new Compute();
    //Keyboard
      KeyHandler keyHandler = new KeyHandler();
      KeyActions keyActions = new KeyActions();
      Axis axis = new Axis();
    //Sprites
      Frames frames = new Frames();
    //Player
      Movement movement = new Movement();

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



//System Functions
  void setup () {
    //size            (1000, 700);
    //siz = new int[] {1000, 700};
    fullScreen(1);
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


    //Compute
      compute.update();

    //Canvas
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
