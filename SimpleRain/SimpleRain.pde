int lineCount = 48;

void setup() {
  size(640, 640);
  background(255);

  frameRate(25);
  stroke(0, 50);
}

void draw() {
  background(255);
  for (int $i=0; $i < lineCount; $i++) {
    float x = (width / lineCount) * $i;
    float y = random(height);
    line(x, y - noise(frameCount), x, y + noise(frameCount * 2) * random(1, height / 10));
  }
}
