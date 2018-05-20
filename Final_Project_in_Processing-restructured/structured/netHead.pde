//Libraries
  //import ddf.minim.*;   //Need a diffrent sound library
  //  Minim minim;
  //package src.javaranch;
  //import java.lang.reflect.Field;

  //Classes
    //Data
      //Variables
        Vars vars = new Vars();
      //Dialogue
        DialoguePalette dialoguePalette = new DialoguePalette();
      //Resources
        Resources resources = new Resources();

    //Compute
      Compute compute = new Compute();
      //Timer
        //Setup in individual objects
        //Timer globalTimer = new Timer();
      //Keyboard
        KeyHandler keyHandler = new KeyHandler();
        KeyActions keyActions = new KeyActions();
        Axis axis = new Axis();
      //Dialogue
        DialogueHandler dialogueHandler = new DialogueHandler();
      //Sprites
        Frames frames = new Frames();
      //NPC
        MovementAlgorithms movementAlgorithms = new MovementAlgorithms();
        EnemyNPCs enemyNPCs = new EnemyNPCs();
        FriendlyNPCs friendlyNPCs = new FriendlyNPCs();
      //Player
        Movement movement = new Movement();
        //Interaction
          Nearby nearby = new Nearby();
          Interact interact = new Interact();
      //Objects
        SetupObjects setupObjects = new SetupObjects();
        Ladder ladder = new Ladder();


    //Canvas
      Canvas canvas = new Canvas();
      //Camera
        Camera camera = new Camera();
      //UI
        UI ui = new UI();
      //Dialogue
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
//void stop() {
//  resources.glassBreakMedium.close();
//  minim.stop();
//  super.stop();
//}
