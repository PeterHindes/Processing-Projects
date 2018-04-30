//Varable Section
//Global Refrences
color[] palette = {#e6194b, #3cb44b, #ffe119, #0082c8, #f58231, #911eb4, #46f0f0, #f032e6, #d2f53c, #fabebe, #008080, #e6beff, #aa6e28, #fffac8, #800000, #aaffc3, #808000, #ffd8b1, #000080, #808080, #FFFFFF, #000000};
color bg = #b3b8bf;

//Keys            z       x       c   ??
//boolean keys[] = {false, false, false, false, false};

//Dynamic Vars
//1:rock 2:paper 3:holeP
int rphph = -1;
boolean dontRun = false;
String message = "Chose";

//Dynamic Consistency Vars
int[] siz = new int[2];
int center;

/*/Init Images
PImage rock;
PImage paper;
PImage holePunch;
*/
//Init Images As Arrays
PImage[] all = new PImage[3];

//Consistency
//Key Infographic Strings
String s1 = "z: Rock";
String s2 = "x: Paper";
String s3 = "c: Hole Punch";
//Key Infographic Spacing
int kiMargin = 50;
//int kiCenter = int(textWidth(s1)) + int(textWidth(s2)) + int(textWidth(s3)) +kiMargin +kiMargin;
//int kiCenter;

//Setup Function
void setup() {
  size           (900, 700);    //Size Of Canvis Setup
  siz = new int[]{900, 700};    //Size Of Canvis As A Variable
  center = siz[0]/2;            //Find the center and make a Variable

  //An attempt to center arround the bloc and not s2
  //kiCenter = (int(center/2)) - ((int(textWidth(s1) + textWidth(s2) + textWidth(s3))  +kiMargin +kiMargin)/2);

  /*/Load Images
  rock = loadImage("Img/rock.png");
  paper = loadImage("Img/paper.png");
  holePunch = loadImage("Img/hole-punch.png");
  */
  //Load Images As Array
  all[0] = loadImage("Img/Scaled/rock.png");
  all[1] = loadImage("Img/Scaled/paper.png");
  all[2] = loadImage("Img/Scaled/hole-punch.png");
}

//Run
void draw() {
  background(bg);

  keyInfographic();

  text(message,150,200);
  if (!(rphph == -1)){
    image(all[rphph-1],30,230);
  }
}


void keyInfographic(){
  textSize(26);
  textAlign(CENTER, TOP);
  text(s1, center -textWidth(s1)/2 -textWidth(s2)/2  -kiMargin, 10);
  text(s2, center, 10);
  text(s3, center +textWidth(s3)/2 +textWidth(s2)/2  +kiMargin, 10);
}


int compPlay() {
  return int(random(3)+1);
}


//Key Calls
void keyPressed() {
  switch(key) {
    case 'z':
      rphph = 1;
      dontRun = false;
      break;
    case 'x':
      rphph = 2;
      dontRun = false;
      break;
    case 'c':
      rphph = 3;
      dontRun = false;
      break;
    default:
      rphph = 0;
      dontRun = true;
      break;
  }
}

void keyReleased() {
  if (!dontRun){
    int compu = compPlay();

    /*
    the 9 posibilities of rps
      1 |2 |3
      r |p |s
   1r|rr|rp|rs
   2p|pr|pp|ps
   3s|sr|sp|ss

    p>r
    r>s
    s>p

    Doubles are the same if statment
    if comp == player then ...
    */
    if (rphph == compu){  //1 //Doubles
      message = "Draw";
    } else if (rphph == 2 && compu == 1){ //2 //p>r
      message = "Player Wins";
    } else if (rphph == 1 && compu == 3){ //3 //r>s
      message = "Player Wins";
    } else if (rphph == 3 && compu == 2){ //4 //s>p
      message = "Player Wins";

    } else if (compu == 2 && rphph == 1){ //5 //p>r
      message = "Computer Wins";
    } else if (compu == 1 && rphph == 3){ //6 //r>s
      message = "Computer Wins";
    } else if (compu == 3 && rphph == 2){ //7 //s>p
      message = "Computer Wins";
    }
/*  } else if (rphph == 2 && compu == 2){ //8
Un Needed due to doubles
    } else if (rphph == 2 && compu == 2){ //9
*/

  }
}
