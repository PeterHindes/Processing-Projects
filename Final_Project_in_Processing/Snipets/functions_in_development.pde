void dialogueBox (int lineCount, String title, String message) {

  //Activate Matrix
  pushMatrix();
  //Allign to bottom with padding
  //translate(0 + dialoguePading ,  siz[1] - (dialoguePading));
  //Allign to bottom without padding
  translate(0 ,  siz[1]);


  //Calculate
  //Height of title and body in seprate vars with their respective fonts
  textFont(arial);
  int bodyHeight  = int(textAscent())*lineCount;
  textFont(arialBold);
  int titleHeight = int(textAscent());
  //body position with all padding verticaly
  int bodyNspacingHeight = bodyHeight          + dialoguePading;
  int titleNspacingHeight = titleHeight        + dialoguePading;

  int rightPaded = siz[0] - dialoguePading*2;
  int wholeMessagePadded =


  //Rectangle
  translate(dialogueBoxPading,dialogueBoxPading);
  fill(msgBx[0]);
  rect(0,0,
    rightPaded ,
    wholeMessagePadded
  );

  //Text
  translate(dialoguePading,dialoguePading);
  translate(0,bodyHeight)
  fill(0);
  textAlign(LEFT, TOP);
  text(message, 0,0);

  //Title
  textAlign(LEFT, BOTTOM);
  text(title, 0,0)

}
