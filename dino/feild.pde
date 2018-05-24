class Feild {

  //Feild Vars
    //The arrays for obstacle positions on the feild (Half = one screen)
    int[] fOne; //First Half
    int[] fTwo; //Second Half
    //Obstacle Vars
    int obstCount = 16;//How many obstacles per screen (per half of feild)
    int obstHight = 7;//% //How tall the obstacles will be in percent
    int obstWidth = 3;//% //How wide the obstacles will be in percent

    //Loup
    //Draw first half at the end of the feild(true) or the begining(false)
    //used for making the transition seamless
    boolean startSet = false;

  void update() {
    //Test For Halfway
    hlfW();
  }

  void draw() {

    //Draw obstacles
    fill(150); //Gray obstacles
    for (int curd : fOne){ //Loup over the first feild and for each instance put the value in curd
      if (!startSet){ //is the player at the front or end of the map (for continuous feild)
        rect(curd,height-floorHeight,scale.PcToPx(obstWidth),-scale.PcToPx(obstHight)); //Draw the feild at the front
      } else {
        rect(curd+width*2,height-floorHeight,scale.PcToPx(obstWidth),-scale.PcToPx(obstHight)); //Draw the feild at the end
      }
    }
    for (int curd : fTwo){ //Loup over the second feild and for each instance put the value in curd
      rect(curd,height-floorHeight,scale.PcToPx(obstWidth),-scale.PcToPx(obstHight)); //Draw the obstacle
    }
  }

  void setup() {
    //Setup the feild for first run
    set1();
    set2();
  }

  //Feilds Calculations
  //Distance/Halfway Test
  //If we are halfway regenerate the first half of the feild and put it at the end
  //if we are all the way(2xscreen) go back to the start
  void hlfW (){
    if ((playerPos-buffer) > width && !startSet){
      set1();
      startSet = true;
    }
    if ((playerPos-buffer) >= width*2){
      set2();
      startSet = false;
    }
  }

  //Feilds Data and Setup
  void set1() {
    //Debug that we are setting half one of the feild
    //print("Set1\n");

    //Make an array of positions for the first half of the feild
    fOne = obst(obstCount, false);
    //Sort the array
    //Arrays.sort(fOne);
  }
  void set2() {
    //Debug that we are setting half two of the feild
    //print("Set2\n");
    playerPos = 15;

    //Make an array of positions for the second half of the feild
    fTwo = obst(obstCount, true);
    //Sort the array
    //Arrays.sort(fTwo);
  }
  //Generate a feild
  int[] obst(int times,boolean secondSet) {
    int[] result = new int[times];
    for(int i = 0; i < times; i++){
      result[i] = int(random(width));
    }
    if (secondSet){
      for(int i = 0; i < times; i++){
        result[i]+=width;
      }
    }
    return result;
  }
}
