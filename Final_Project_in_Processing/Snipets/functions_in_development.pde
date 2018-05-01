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
  int bodyNspacingHeight = bodyHeight        + dialoguePading;

}
