class PrcScale {

  int PxToPc( int Px ) {
    return ((width/Px)*100); //Convert To Percent [Might not be int always]
  }
  int PcToPx( int Pc ) {
    return ((width/100)*Pc); //Convert To Pixels [Might not be int always]
  }

}
