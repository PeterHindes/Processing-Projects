//Varable Section
//Bars
int[] bars = { 100, 36, 56, 74};
color[] palette = {#e6194b, #3cb44b, #ffe119, #0082c8, #f58231, #911eb4, #46f0f0, #f032e6, #d2f53c, #fabebe, #008080, #e6beff, #aa6e28, #fffac8, #800000, #aaffc3, #808000, #ffd8b1, #000080, #808080, #FFFFFF, #000000};

//Keys            UP     Down   LEFT   RIGHT  SHIFT
boolean keys[] = {false, false, false, false, false};

//Dynamic Vars
int selectedIndex = 0;
int Change;

//Dynamic Consistency Vars
int maxIndex = -1;

//Consistency
int wide = 100;
int margin = 60;
int majorChange = 5;
int minorChange = 1;
int[] siz = {900, 700};
void setup() {
  size(900, 700);

  for (int higt : bars) {
    maxIndex++;
  }
}

void draw() {
  background(#fffac8);

  int indx = 0;
  for (int higt : bars) {
    bar(indx);
    indx++;
  }
  indx = 0;
}

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
