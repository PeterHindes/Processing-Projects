class Axis {
  void update( ) {
    //Keys    UP     Down   LEFT   RIGHT  SHIFT
    //Y
      if        (vars.keys[0]) {
        inputAxis.y = 1;
      } else if (vars.keys[1]) {
        inputAxis.y = -1;
      } else {
        inputAxis.y = 0;
      }
    //X
      if        (vars.keys[2]) {
        inputAxis.x = -1;
      } else if (vars.keys[3]) {
        inputAxis.x = 1;
      } else {
        inputAxis.x = 0;
      }
  }
}
