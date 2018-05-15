class Axis {
  void update( ) {
    //Keys    UP     Down   LEFT   RIGHT  SHIFT
    //Y
      if        (vars.keys[0]) {
        vars.inputAxis.y = 1;
      } else if (vars.keys[1]) {
        vars.inputAxis.y = -1;
      } else {
        vars.inputAxis.y = 0;
      }
    //X
      if        (vars.keys[2]) {
        vars.inputAxis.x = -1;
      } else if (vars.keys[3]) {
        vars.inputAxis.x = 1;
      } else {
        vars.inputAxis.x = 0;
      }
  }
}
