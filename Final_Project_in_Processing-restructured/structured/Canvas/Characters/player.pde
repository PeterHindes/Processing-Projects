class Player {
  void draw() {

    //Render
    pushMatrix();

    translate(vars.playerPos.x,  height-vars.playerPos.y);

    resources.marthaCurrentVariant = resources.marthaStill;

    //float imageScale = 2.75f; //You should not scale the image if you want sharp edges, pleas do this externaly
    image(resources.marthaCurrentVariant[floor(marthaCurrentFrame)],
      0  ,
      -floorLevel - (resources.marthaCurrentVariant[int(marthaCurrentFrame)].height)  ,
      resources.marthaCurrentVariant[floor(marthaCurrentFrame)].height  ,  //Image is scaled, need to figure out how to use aliased image, or manualy resize it
      resources.marthaCurrentVariant[floor(marthaCurrentFrame)].width
    );

    popMatrix();

    //Advance Character Frame
    if (floor(marthaCurrentFrame) <= resources.marthaCurrentVariant.length) { // The plus 1 will likeley make an array bounds crash
      marthaCurrentFrame+=marthaFrameIncrement;
    } else {
      marthaCurrentFrame=0;
    }

  }
}
