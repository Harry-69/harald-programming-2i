void setup() {
  size(1920, 1080);
  fill(255, 255, 0);

}

void draw() {
  clear();
  for (int x =1; x < 14; x++) {
    for (int i=1; i < 14; i++) {
      rect(i*60+ random(-3,3), x*60 + random(-3, 3), 50, 50 );
    }
  }
}
