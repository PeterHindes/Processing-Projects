//Variables


//Resource Variables
//PImage martha1;
PFont arial;
PFont arialBold;


//Consistency variables
int dialoguePading = 25;

//Dynamic Consistency variables
int[] siz;

//Functions
void setup () {
  size           (1000, 700);
  siz = new int[]{1000, 700};

  //background (0);
  background(255);

  //Setup Resources
  arialBold = createFont("Arial-Bold", 22);
  arial = createFont("Arial", 17);
  //martha1 = loadImage("martha-1.png");
}

void draw () {
  fill(0);

  dialogueBox(
    "GOVERNMENT ANNOUNCEMENT",
    "Those infected by the outbreak CANNOT feel, think or remember any past experiences. They are dangerous and MUST be killed ON SIGHT"
  );
}

//Custom Functions
void dialogueBox (String title, String message) {
  //Box BG
  fill();

  //Title
  textFont(arialBold);
  text(
    title,
    /*Position text*/ 0+ dialoguePading, siz[1] -100
  );

  //Message
  textFont(arial);
  text(
    message,
    /*Position text*/ 0+ dialoguePading, siz[1] -75,
    /*Limit text to screen*/ siz[0] - dialoguePading*2, siz[1] -75
  );
}

//Key Calls
void keyReleased () {

//  if (key == 'd'
}
