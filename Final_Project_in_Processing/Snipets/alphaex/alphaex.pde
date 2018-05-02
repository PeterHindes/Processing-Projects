int xey = 10;


void setup(){
  size(500,300);
}

void update(){
  xey++;
  print("Ran");
}

void draw(){
  background(100);
  rect(xey,10, 20,20);
}
