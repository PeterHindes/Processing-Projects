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

//Dynamic Consistency Vars

//Init Images
PImage rock;
PImage paper;
PImage holePunch;
PImage[] all = new PImage[3];

//Consistency
int wide = 100;
int margin = 60;
int majorChange = 5;
int minorChange = 1;

int[] siz = {900, 700};
void setup() {
  size(900, 700);

  //Load Images
  rock = loadImage("Img/rock.png");
  paper = loadImage("Img/paper.png");
  holePunch = loadImage("Img/hole-punch.png");
  //Load Images As Array
  all[0] = loadImage("Img/rock.png");
  all[1] = loadImage("Img/paper.png");
  all[2] = loadImage("Img/hole-punch.png");
}


void draw() {
  background(bg);
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
    /*
    if (rphph == compPlay())
      print("Draw");
    if (rphph > compPlay())
    */

    image(all[rphph-1],30,30);

  }
}

/*
void bar(int index) {
  int pos = index*(wide+margin)+margin;

  if (pos > siz[1]) {
    print("Error, Bars should not be drawn off screen, check pos calc and size.\n");
    fill(0);
    text("Error bar out of bounds", 10, 10);
  }

  if (index == selectedIndex) {
    strokeWeight(2);
    stroke(50);
  } else {
    strokeWeight(1);
    stroke(0);
  }

  fill(palette[index]);
  rect(pos, siz[1], wide, -bars[index]);


  fill(3);
  textAlign(CENTER);
  textSize(20);
  text(bars[index], pos+(wide/2), siz[1]-bars[index]-3);
}
*/
