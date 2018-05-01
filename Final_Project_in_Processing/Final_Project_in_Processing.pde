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
int dialogueBoxPading = dialoguePading - 10;
int dialogueBoxCornerRadius = 25;

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
    3,
    "GOVERNMENT ANNOUNCEMENT",
    "Those infected by the outbreak CANNOT feel, think or remember any past experiences. "+
    "They are dangerous and MUST be killed ON SIGHT!"
  );
}

//Custom Functions
void dialogueBox (int lineCount, String title, String message) {

  //Calculate
  //Height of title and body in seprate vars with their respective fonts
  textFont(arial);
  int bodyHeight  = int(textAscent())*lineCount;
  textFont(arialBold);
  int titleHeight = int(textAscent());
  //body position with all padding verticaly
  int bodyNspacingHeight = bodyHeight        + dialoguePading;

  //Draw
  fill(msgBx[0]);
  rect(
    //First point
      //X Axis\/
      dialogueBoxPading  ,
      //Y Axis\/  bottom | padding up from the bottom
                  siz[1] - dialogueBoxPading  ,
    //Second relative point
      //X Axis\/  right side absolute | padding for the right | acomodation for the pading on the left from the first point
                  siz[0]              - dialogueBoxPading     - dialogueBoxPading  ,
      //Y Axis\/
                  -bodyNspacingHeight - titleHeight,
    //Corner radius
      dialogueBoxCornerRadius
  );

  //Title
  //fill(msgBx[1]);
  fill(0);
  textFont(arialBold);
  text(
    title,
    //Position text
      //X Axis\/  left side   |
                  0           + dialoguePading  ,
      //Y Axis\/  bottom side | height of lines   | Padding From The Body | Space Above Body
                  /*siz[1]      - bodyHeight        - dialoguePading */siz[1] - bodyNspacingHeight       - 15

  );

  //Message
  textFont(arial);
  text(
    message  ,
    //Position text
      //X Axis\/  left side
                  0           + dialoguePading  ,
      //Y Axis\/  bottom side | height of lines   |    **Subtract means up on the y axis**
        siz[1] - bodyNspacingHeight  ,//          siz[1]      - bodyHeight        - dialoguePading  ,
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
