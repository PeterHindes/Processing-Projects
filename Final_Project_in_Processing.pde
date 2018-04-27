//Variables


//Resource Variables
//PImage martha1;
PFont arial;
PFont arialBold;


//Consistency variables
int dialoguePading = 25;

//Functions
int[] siz = {1000, 700};
void setup () {
  size(1000,700);

  //background (0);
  background(255);

  //Setup Resources
  arialBold = createFont("Arial-Bold", 22);
  arial = createFont("Arial", 17);
  //martha1 = loadImage("martha-1.png");
}

void draw () {
  fill(0);

  textFont(arialBold);
  text("GOVERNMENT ANNOUNCEMENT",  /*Position text*/ 0+ dialoguePading, siz[1] -100);

  textFont(arial);
  text("Those infected by the outbreak CANNOT feel, think or remember any past experiences. They are dangerous and MUST be killed ON SIGHT"
    /*Position text*/ ,0+ dialoguePading, siz[1] -75,  /*Limit text to screen*/ siz[0] - dialoguePading*2, siz[1] -75);
}

//Custom Functions
void dialogueBox () {
  textFont(arialBold);
  text("GOVERNMENT ANNOUNCEMENT",  /*Position text*/ 0+ dialoguePading, siz[1] -100);

  textFont(arial);
  text("Those infected by the outbreak CANNOT feel, think or remember any past experiences. They are dangerous and MUST be killed ON SIGHT"
    /*Position text*/ ,0+ dialoguePading, siz[1] -75,  /*Limit text to screen*/ siz[0] - dialoguePading*2, siz[1] -75);
}

//Key Calls
void keyReleased () {

//  if (key == 'd'
}
