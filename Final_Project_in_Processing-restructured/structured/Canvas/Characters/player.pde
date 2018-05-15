class Player {
  void draw() {

    //Render
    pushMatrix();

    translate(vars.playerPos.x,  height-vars.playerPos.y);

    resources.marthaCurrentVariant = resources.marthaStill;

    //float imageScale = 2.75f; //You should not scale the image if you want sharp edges, pleas do this externaly
    image(resources.marthaCurrentVariant[floor(vars.marthaCurrentFrame)],
      0  ,
      -vars.floorLevel - (resources.marthaCurrentVariant[int(vars.marthaCurrentFrame)].height)  ,
      resources.marthaCurrentVariant[floor(vars.marthaCurrentFrame)].height  ,  //Image is scaled, need to figure out how to use aliased image, or manualy resize it
      resources.marthaCurrentVariant[floor(vars.marthaCurrentFrame)].width
    );

    popMatrix();

    //Advance Character Frame
    vars.marthaCurrentFrame = frames.Calc(vars.marthaCurrentFrame, vars.marthaFrameIncrement, resources.marthaCurrentVariant.length);

  }
}
