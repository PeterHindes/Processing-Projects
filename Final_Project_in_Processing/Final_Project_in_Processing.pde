//Variables


//Resources
  //Colors
    color[] msgBx = {0x66669961};
  //External
    //Images
      //PImage martha1;
      PFont arial;
      PFont arialBold;
    //Sound


//Consistency variables
int dialoguePading = 25;

//Dynamic Consistency variables
int[] siz;

//Functions
void setup () {
  size           (1000, 700);
  siz = new int[]{1000, 700};

  //background (0);
  background(100);

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

  fill(255,0,0,191);
  rect(10,10,50,50);
}

//Custom Functions
void dialogueBox (String title, String message) {
  //Box BG
  noStroke();
  //fill(50,50,60,20);
  fill(255,0,0,191);
  rect(10,10,50,50);

  fill(0);

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
