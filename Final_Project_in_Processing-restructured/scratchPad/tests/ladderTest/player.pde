class Player {
  void setup() {
    tables[0].objectName = "player";
    tables[0].x = 50;
    tables[0].y = 50;
    tables[0].sX = 25;
    tables[0].sY = -35;
  }
  void act( ){
    //Consts
    int xDetec = 30;
    int yDetec = 7;

    for(int i = 1; i < tables.length ; i++) {
      //print((tables[0].x+tables[0].sX + (xDetec/2) > tables[i].x) + "\n" + i + "\n\n");
      if (
        //Left Sid + Dist to Right+buffer :is greater than: left of target object
        tables[0].x+tables[0].sX + (xDetec/2) > tables[i].x && //Left Of Object :: object on right side
        //left sid + lefted|buffer :is less than: left of target + dist to righta
        tables[0].x + -(xDetec/2) < tables[i].x+tables[i].sX  //Right Of Object :: object on left side

      ) {
        print (tables[i].objectName + "\n");
        timer[i-1].start();
      }
    }
  }
  void move( ){
    if(keyPressed){
      if(key == 'a'){
        tables[0].x -= 2;
      } else if(key == 'd'){
        tables[0].x += 2;
      } else if(key == ' '){
        act();
      }
    }
  }
  void draw() {
    player.move();
    fill(0,255,150);
    stroke(0);
    rect(tables[0].x,tables[0].y,tables[0].sX,tables[0].sY);
    //print("Draw " + tables[0].x + ":" + tables[0].y + "  " + tables[0].sX + ":" + tables[0].sY + "\n");
    fill(0,0,0);
  }
}
