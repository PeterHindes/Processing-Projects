class Canvas {
  void draw() {

    camera.pan("open");

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
    player.draw();

    //End
    popMatrix();

    ui.draw();
  }
}
