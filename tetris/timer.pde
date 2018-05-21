class Timer {
  int init = 0;
  void start() {
    init = millis();
  }
  int count() {
    return millis() - init;
  }
}
