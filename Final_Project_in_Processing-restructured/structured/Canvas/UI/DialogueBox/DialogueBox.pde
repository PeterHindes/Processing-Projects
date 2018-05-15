class DialogueBox {

  public void primary (int lineCount, String title, String dialogue) {

    int opacityPC = 95;
    int opacityBI = (255/100)*opacityPC;

    //Activate Matrix
    pushMatrix();
    //Allign to bottom with padding
    //translate(0 + vars.dialoguePading ,  height - (vars.dialoguePading));
    //Allign to bottom without padding
    translate(0 ,  height);


    //Calculate
    //Height of title and body in seprate vars with their respective fonts
    textFont(resources.mesageFont);
    int bodyHeight  = int(textAscent())*(lineCount+1);
    textFont(resources.titleFont);
    int titleHeight = int(textAscent());
    //body position with all padding verticaly
    int bodyNspacingHeight = bodyHeight          + vars.dialoguePading;
    int titleNspacingHeight = titleHeight        + vars.dialoguePading;

    int rectRightPaded = width - vars.dialogueBoxPading*2;
    int wholeMessagePadded = bodyHeight+titleHeight*2+vars.dialogueBoxTitlePading; //The titleHeight is double because it is fliped to the top, and the body is bottom


    //Rectangle
    translate(vars.dialogueBoxPading,-vars.dialogueBoxPading);
    fill(resources.msgBx[0], opacityBI);
    rect(0,0,
      rectRightPaded ,
      -wholeMessagePadded ,
      7
    );

    //Message
    translate(vars.dialoguePading,-vars.dialoguePading);
    translate(0,-bodyHeight);
    fill(0);
    textAlign(LEFT, TOP);
    textFont(resources.mesageFont);
    text(dialogue, 0,0, rectRightPaded - vars.dialoguePading*2, height      - bodyHeight);

    //Title
    textAlign(LEFT, BOTTOM);
    textFont(resources.titleFont);
    text(title, 0,-vars.dialogueBoxTitlePading);

    popMatrix();
  }
}
