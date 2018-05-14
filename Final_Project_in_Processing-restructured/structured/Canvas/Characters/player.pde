class Player {
  void draw() {
    pushMatrix();

    translate(playerPos[0],  height-playerPos[1]);

    resources.marthaCurrentVariant = resources.marthaStill;

    float imageScale = 2.75f;
    //smooth(0);
    image(resources.marthaCurrentVariant[int(marthaCurrentFrame)],
      0  ,
      -floorLevel - (resources.marthaCurrentVariant[int(marthaCurrentFrame)].height * imageScale)  ,
      resources.marthaCurrentVariant[int(marthaCurrentFrame)].height * imageScale  ,  //Image is scaled, need to figure out how to use aliased image, or manualy resize it
      resources.marthaCurrentVariant[int(marthaCurrentFrame)].width * imageScale
    );

    //Advance Character Frame
    if (marthaCurrentFrame < resources.marthaCurrentVariant.length-marthFrameIncrement) {
      marthaCurrentFrame+=marthFrameIncrement;
    } else {
      marthaCurrentFrame=0;
    }

    popMatrix();
  }
}
