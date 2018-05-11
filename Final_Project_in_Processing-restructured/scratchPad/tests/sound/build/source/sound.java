import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sound extends PApplet {

// Note: this program runs only in the Processing IDE, not in the browser



Minim minim;
AudioSample water;

int x = 130;
int y = 100;
int dx = 5;
int dy = 5;

public void setup() {
  
  fill(255, 0, 0);
  noStroke();
  

  minim = new Minim(this);
  water = minim.loadSample("sample.mp3", 2048);
}
public void draw() {
  background(255);
  ellipse(x, y, 50, 50);
  x += dx;
  y += dy;

  if(x > width) {
    x = width;
    dx = -dx;
    water.trigger();
  }
  if(x < 0) {
    x = 0;
    dx = -dx;
    water.trigger();
  }
  if(y > height) {
    y = height;
    dy = -dy;
    water.trigger();
  }
  if(y < 0) {
    y = 0;
    dy = -dy;
    water.trigger();
  }
}
public void stop() {
  water.close();
  minim.stop();
  super.stop();
}
  public void settings() {  size(400, 300);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sound" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
