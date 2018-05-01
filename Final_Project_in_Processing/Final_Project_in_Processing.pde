//Variables


//Resources
  //Colors
    color[] msgBx = {0x3a3a4c38, #222e30};
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

  //Setup Resources
  arialBold = createFont("Arial-Bold", 22);
  arial = createFont("Arial", 17);
  //martha1 = loadImage("martha-1.png");
}

void draw () {
  background(175);

  dialogueBox(
    2,
    "GOVERNMENT ANNOUNCEMENT",
    "Those infected by the outbreak CANNOT feel, think or remember any past experiences. "+
    "They are dangerous and MUST be killed ON SIGHT!"
  );
}

//Custom Functions
void dialogueBox (int lineCount, String title, String message) {

  //Calculate
  textFont(arial);
  int bodyHeight  = int(textAscent())*lineCount;
  textFont(arialBold);
  int titleHeight = int(textAscent());

  //Draw
  fill(msgBx[0]);
  rect(15,siz[1]-15,siz[0]-30,-125,25);

  //Title
  //fill(msgBx[1]);
  fill(0);
  textFont(arialBold);
  text(
    title,
    //Position text
      //X Axis\/  left side   |
                  0           + dialoguePading  ,
      //Y Axis\/  bottom side | height of lines  |
                  siz[1]      - bodyHeight       + 5

  );

  //Message
  textFont(arial);
  text(
    message  ,
    //Position text
      //X Axis\/  left side
                  0           + dialoguePading  ,
      //Y Axis\/  bottom side | height of lines   |    **Subtract means up on the y axis**
                  siz[1]      - bodyHeight        - dialoguePading  ,
    //Limit text to screen
      //X Axis\/  right side  | Pading for the right side
                  siz[0]      - dialoguePading*2  ,
      //Y Axis\/  bottom side | height of lines
                  siz[1]      - bodyHeight
  );
}

//Key Calls
void keyReleased () {

}
