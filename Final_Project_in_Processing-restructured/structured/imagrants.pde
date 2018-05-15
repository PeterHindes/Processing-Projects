//Custom Functions
  void player() {
    pushMatrix();

    translate(playerPos[0],  height-playerPos[1]);

    resources.marthaCurrentVariant = resources.marthaStill;

    float imageScale = 2.75f;
    //smooth(0);
    image(resources.marthaCurrentVariant[int(vars.marthaCurrentFrame)],
      0  ,
      -vars.floorLevel - (resources.marthaCurrentVariant[int(vars.marthaCurrentFrame)].height * imageScale)  ,
      resources.marthaCurrentVariant[int(vars.marthaCurrentFrame)].height * imageScale  ,  //Image is scaled, need to figure out how to use aliased image, or manualy resize it
      resources.marthaCurrentVariant[int(vars.marthaCurrentFrame)].width * imageScale
    );

    //Advance Character Frame
    if (vars.marthaCurrentFrame < resources.marthaCurrentVariant.length-vars.marthaFrameIncrement) {
      vars.marthaCurrentFrame+=vars.marthaFrameIncrement;
    } else {
      vars.marthaCurrentFrame=0;
    }

    popMatrix();
  }


dialogueBox.primary(2,  dialoguePalette.Titles[vars.dialoguePrimary][vars.dialogueMinor], dialoguePalette.Dialogue[vars.dialoguePrimary][vars.dialogueMinor]);
