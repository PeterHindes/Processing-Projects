void setup() {
  size (700,500);

}

void draw() {
  pushMatrix();
  translate(50,70);
  rect(0,0, 10,10);

  pushMatrix();
  rotate(60);
  rect(0,0, 20,20);
  popMatrix();

  ellipse(50,50, 25,25);
  popMatrix();
}
