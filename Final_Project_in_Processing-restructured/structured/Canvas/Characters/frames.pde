class Frames {  // [Curently Causes Array Bounds Exception]
  float Calc(float current, float increment, int total) {
    float ret = current;
    if ( floor(ret + increment)+1 <= total ) {  //Does not cause a missing last frame issue
      ret+=increment;
    } else {
      ret=0;
    }
    return ret;
  }
}
