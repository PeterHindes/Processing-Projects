class Frames {
  int calc(int current, int increment, int total) {
    if ( floor(current + increment) <= total ) {
      current+=increment;
    } else {
      current=0;
    }
    return current;
  }
}
