class DialogueBox {

  public int dialoguePrimary = 0;
  public int dialogueMinor = 0;

  public void primary (int lineCount, String title, String dialogue) {

    int opacityPC = 95;
    int opacityBI = (255/100)*opacityPC;

    //Activate Matrix
    pushMatrix();
    //Allign to bottom with padding
    //translate(0 + dialoguePading ,  height - (dialoguePading));
    //Allign to bottom without padding
    translate(0 ,  height);


    //Calculate
    //Height of title and body in seprate vars with their respective fonts
    textFont(resources.mesageFont);
    int bodyHeight  = int(textAscent())*(lineCount+1);
    textFont(resources.titleFont);
    int titleHeight = int(textAscent());
    //body position with all padding verticaly
    int bodyNspacingHeight = bodyHeight          + dialoguePading;
    int titleNspacingHeight = titleHeight        + dialoguePading;

    int rectRightPaded = width - dialogueBoxPading*2;
    int wholeMessagePadded = bodyHeight+titleHeight*2+dialogueBoxTitlePading; //The titleHeight is double because it is fliped to the top, and the body is bottom


    //Rectangle
    translate(dialogueBoxPading,-dialogueBoxPading);
    fill(resources.msgBx[0], opacityBI);
    rect(0,0,
      rectRightPaded ,
      -wholeMessagePadded ,
      7
    );

    //Message
    translate(dialoguePading,-dialoguePading);
    translate(0,-bodyHeight);
    fill(0);
    textAlign(LEFT, TOP);
    textFont(resources.mesageFont);
    text(dialogue, 0,0, rectRightPaded - dialoguePading*2, height      - bodyHeight);

    //Title
    textAlign(LEFT, BOTTOM);
    textFont(resources.titleFont);
    text(title, 0,-dialogueBoxTitlePading);

    popMatrix();
  }
}
