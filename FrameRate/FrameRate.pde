int textSize = 16;
int nextFrameRate = 10;

void setup() {
  size(255, 255);
  background(0);
  textSize(textSize);
  frameRate(nextFrameRate);
}

void draw() {
  float start = millis();

  clear();
  if (nextFrameRate > frameRate) {
    nextFrameRate--;
    background(0, 0, 255);
  } else {
    nextFrameRate++;
    background(255, 0, 0);
  }

  stroke(255);
  for (int x = 0; x <= width; x+=2) {
    for (int y = 0; y <= height; y+=2) {
      stroke(0, 255, 255); 
      point(x, y);
    }
  }

  text(frameRate, 0, textSize);
  text(start, 0, textSize * 2);

  println(frameRate+" "+nextFrameRate);
  frameRate(nextFrameRate);
}
