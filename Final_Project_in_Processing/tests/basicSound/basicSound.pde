import ddf.minim.*;

Minim minim;
AudioSample soun;

void setup() {
  size(400, 300);

  minim = new Minim(this);
  soun = minim.loadSample("glass-break-medium.wav", 2048);

  soun.trigger();
}

void stop() {
  soun.close();
  minim.stop();
  super.stop();
}
