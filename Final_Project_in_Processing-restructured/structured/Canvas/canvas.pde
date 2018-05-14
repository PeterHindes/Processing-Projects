class Canvas {
  void draw() {
    pushMatrix();
    //if (/*Character X Position is greater than 80% of the screen*/) {
      /*keep the canvas moving so they never exceede 80% of the screen*/
    //} else if (/*Character X Position is less than 20% of the screen*/) {
      /*keep the canvas moving so they never go below 20% of the screen*/
    //}

    //World
    //A Perfectly Centered but Limited background image
    //Calculate The height of the image relative to the scaled width
    int quest = width/resources.backGrnd.width;
    int imgYscl = quest * resources.backGrnd.height;
    //Image
    image(resources.backGrnd, 0,0, width,imgYscl);
    //A Background image that has the proper height by default and is wider than the screen
    //image(resources.backGrnd, 0,0);

    //Player
    player();

    //End
    popMatrix();

    ui.draw();
  }
}
