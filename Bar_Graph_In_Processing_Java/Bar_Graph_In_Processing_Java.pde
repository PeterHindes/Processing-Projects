//Varable Section
//Bars
int[] bars = {0,0,0,0,0,0};
color[] palette = {#e6194b, #3cb44b, #ffe119, #0082c8, #f58231, #911eb4, #46f0f0, #f032e6, #d2f53c, #fabebe, #008080, #e6beff, #aa6e28, #fffac8, #800000, #aaffc3, #808000, #ffd8b1, #000080, #808080, #FFFFFF, #000000};
String[] lables = {"Friends","Self Worth","Hours of Netflix Watched","Solidification","Memification","Nugers Consumed"};

//Keys            UP     Down   LEFT   RIGHT  SHIFT
boolean keys[] = {false, false, false, false, false};

//Dynamic Vars
int selectedIndex = 0;
int Change;
int poscc;

//Dynamic Consistency Vars
int maxIndex = -1;
int maxLabIndex = -1;

//Consistency
int wide = 100;
int margin = 60;
int labMargin = 4;
int labDivision = 50;
int majorChange = 5;
int minorChange = 1;
int[] siz = {1100, 700};
void setup() {
  size(1100, 700);

  print("Starting...\n");

  for (int trsh : bars) {
    maxIndex++;
  }
  for (String trsh : lables) {
    maxLabIndex++;
  }
}

void draw() {
  background(#fffac8);

  //Iterative Loup
  poscc = 20;
  for (int indx = 0; indx < maxIndex; indx++) {
    bar(indx);
    colorCode(indx);
  }
}

//Draw a color code
void colorCode(int labIndx) {
  //Array Bounds Protection
  if (labIndx <= maxLabIndex){

    fill(palette[labIndx]);
    rect(poscc-labMargin, 100+labMargin,  textWidth(lables[labIndx])+labMargin*2, -(textAscent()+labMargin*2-2) );

    textAlign(LEFT);
    fill(0);
    text(lables[labIndx],poscc,100);

    poscc += textWidth(lables[labIndx]) + labMargin*2 + margin/2;
    //print(lables[labIndx],"\n",textWidth(lables[labIndx]) + labMargin*2,"\n",poscc,"\n");

  }
}

void bar(int index) {
  //Bar Location Calculation
  int pos = index*(wide+margin)+margin;

  //Bounds Check
  if (pos > siz[0]) {
    print("Error, Bars should not be drawn off screen, check pos calc and size.\n");
    fill(0);
    text("Error bar out of bounds", 10, 10);
  }

  //Set Biger Outline On Selected Bar
  if (index == selectedIndex) {
    strokeWeight(2);
    stroke(50);
  } else {
    strokeWeight(1);
    stroke(0);
  }

  //The Bar
  fill(palette[index]);
  rect(pos, siz[1], wide, -bars[index]);

  //Text For Bar
  fill(3);
  textAlign(CENTER);
  textSize(20);
  text(bars[index], pos+(wide/2), siz[1]-bars[index]-3);
}

//Set Keys
void keyPressed() {
  if (key == CODED) {
    switch(keyCode) {
    case UP:
      keys[0] = true;
      break;
    case DOWN:
      keys[1] = true;
      break;
    case RIGHT:
      keys[2] = true;
      break;
    case LEFT:
      keys[3] = true;
      break;
    case SHIFT:
      keys[4] = true;
    }
  }
}

//Handle Keys To Actions
void keyHandler() {
  if (keys[4]) {
    Change = majorChange;
  } else {
    Change = minorChange;
  }

  if (keys[0]) {
    bars[selectedIndex] += Change;
  } else if (keys[1]) {
    bars[selectedIndex] -= Change;
  } else if (keys[2]) {
    if (selectedIndex < maxIndex) {
      selectedIndex += Change;
    }
  } else if (keys[3]) {
    if (selectedIndex > 0) {
      selectedIndex -= Change;
    }
  }
}

//Unset Keys
void keyReleased() {
  keyHandler();
  if (key == CODED) {
    switch(keyCode) {
    case UP:
      keys[0] = false;
      break;
    case DOWN:
      keys[1] = false;
      break;
    case RIGHT:
      keys[2] = false;
      break;
    case LEFT:
      keys[3] = false;
      break;
    case SHIFT:
      keys[4] = false;
    }
  }
}
