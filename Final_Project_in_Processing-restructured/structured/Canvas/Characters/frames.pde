class Frames {  // [Curently Causes Array Bounds Exception]
  float Calc(float current, float increment, int total) {
    if ( floor(current + increment) <= total ) {
      current+=increment;
    } else {
      current=0;
    }
    return current;
  }
}
