class Resources {
  //Resources
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
    //Dialogue //Outdated, they are objects of the dialoguePalette class now
      //String[][] dialogue = dia.setupDialogue();  //Dialogue setup in external file dialogue.pde
      //String[][] titles = dia.setupTitles();


    void setup( ) {
      //Import External Resources
        //Single Images
          resources.backGrnd = loadImage( "data/Img/Background/" + "betaInterior1-2d" + ".png" );
        //Sprites
          for ( int i = 0; i < resources.marthaStill.length; i++ ) {
            String formatted = String.format("%02d", i);
            resources.marthaStill[i]    = loadImage( "data/Img/Sprites/Martha/MarthaStill/"   + "sprite_" + formatted + ".png" );
            //resources.marthaWalking[i]  = loadImage( "data/Img/Sprites/Martha/MarthaWalking/" + "sprite_" + formatted + ".png" );
            //resources.marthaRunning[i]  = loadImage( "data/Img/Sprites/Martha/MarthaRunning/" + "sprite_" + formatted + ".png" );
            //resources.marthaLadder[i]   = loadImage( "data/Img/Sprites/Martha/MarthaLadder/"  + "sprite_" + formatted + ".png" );
            //resources.marthaStairs[i]   = loadImage( "data/Img/Sprites/Martha/MarthaStairs/"  + "sprite_" + formatted + ".png" );
          }
        //Fonts
          resources.titleFont = createFont("data/Font/Signika-Bold.ttf", 25, true);
          resources.mesageFont = createFont("data/Font/EBGaramond-Regular.ttf", 20, true);
        //Sound
        minim = new Minim(this);
        glassBreakMedium = minim.loadSample( sketchPath("data/SoundEffects/" + "glass-break-medium" + ".wav") , 2048);
    }
}
