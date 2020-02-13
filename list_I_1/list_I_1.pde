float xstart = 0;
float ynoise = 0;

void setup() {
  size(640, 640, P3D);
  background(150);
  stroke(0, 50);
  fill(255, 200);
  xstart = random(10);
  ynoise = random(10);
}    

void draw() {
  translate(width/ 2, height/2, 0);
  for (float y = -(height/ 8); y <= (height / 8 ); y+=3) {
    ynoise += 0.02;
    float xnoise = xstart;
    for (float x = -(width / 8); x <= (width/ 8); x+=3) {
      xnoise += 0.02;
      drawPoint(x, y, noise(xnoise, ynoise));
    }
  }
}

void drawPoint(float x, float y, float noiseFactor) {
  pushMatrix();
  translate(x * noiseFactor * 4, y * noiseFactor* 4, - y);
  float edgeSize = noiseFactor * 26;
  ellipse(0, 0, edgeSize, edgeSize);
  popMatrix();
}
