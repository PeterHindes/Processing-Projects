class Resources {
  //Resources
    //Libraries
      import ddf.minim.*;
        Minim minim;
    //External
      //Images
        PImage backGrnd;
      //Sprites
        PImage[] marthaCurrentVariant;
        PImage[] marthaStill = new PImage[22];
        PImage[] marthaWalking = new PImage[3];
        PImage[] marthaRunning = new PImage[3];
        PImage[] marthaLadder = new PImage[3];
        PImage[] marthaStairs = new PImage[3];
      //Fonts
        PFont titleFont;
        PFont mesageFont;
      //Sound
        AudioSample glassBreakMedium;
    //Palletes
      //Colors
        color[] msgBx = {#634275, #222e30};
      //Dialogue
        String[][] dialogue = dia.setupDialogue();  //Dialogue setup in external file dialogue.pde
        String[][] titles = dia.setupTitles();
}
