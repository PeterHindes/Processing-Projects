class DialogueBox {

  public int dialoguePrimary = 0;
  public int dialogueMinor = 0;

  public void primary (int lineCount, String title, String message) {

    int opacityPC = 95;
    int opacityBI = (255/100)*opacityPC;

    //Activate Matrix
    pushMatrix();
    //Allign to bottom with padding
    //translate(0 + dialoguePading ,  siz[1] - (dialoguePading));
    //Allign to bottom without padding
    translate(0 ,  siz[1]);


    //Calculate
    //Height of title and body in seprate vars with their respective fonts
    textFont(mesageFont);
    int bodyHeight  = int(textAscent())*(lineCount+1);
    textFont(titleFont);
    int titleHeight = int(textAscent());
    //body position with all padding verticaly
    int bodyNspacingHeight = bodyHeight          + dialoguePading;
    int titleNspacingHeight = titleHeight        + dialoguePading;

    int rectRightPaded = siz[0] - dialogueBoxPading*2;
    int wholeMessagePadded = bodyHeight+titleHeight*2+dialogueBoxTitlePading; //The titleHeight is double because it is fliped to the top, and the body is bottom


    //Rectangle
    translate(dialogueBoxPading,-dialogueBoxPading);
    fill(msgBx[0], opacityBI);
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
    textFont(mesageFont);
    text(message, 0,0, rectRightPaded - dialoguePading*2, siz[1]      - bodyHeight);

    //Title
    textAlign(LEFT, BOTTOM);
    textFont(titleFont);
    text(title, 0,-dialogueBoxTitlePading);

    popMatrix();
  }
}
