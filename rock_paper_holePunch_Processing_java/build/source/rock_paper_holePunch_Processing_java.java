import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class rock_paper_holePunch_Processing_java extends PApplet {

//Varable Section
//Global Refrences
int[] palette = {0xffe6194b, 0xff3cb44b, 0xffffe119, 0xff0082c8, 0xfff58231, 0xff911eb4, 0xff46f0f0, 0xfff032e6, 0xffd2f53c, 0xfffabebe, 0xff008080, 0xffe6beff, 0xffaa6e28, 0xfffffac8, 0xff800000, 0xffaaffc3, 0xff808000, 0xffffd8b1, 0xff000080, 0xff808080, 0xffFFFFFF, 0xff000000};

//Keys            z       x       c   ??
//boolean keys[] = {false, false, false, false, false};

//Dynamic Vars
int rphph = -1;

//Dynamic Consistency Vars

//Init Images
PImage rock;
PImage paper;
PImage holePunch;

//Consistency
int wide = 100;
int margin = 60;
int majorChange = 5;
int minorChange = 1;

int[] siz = {900, 700};
public void setup() {
  

  //Load Images
  rock = loadImage("Img/rock.png");
}

/*
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
*/
  public void settings() {  size(900, 700); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "rock_paper_holePunch_Processing_java" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
