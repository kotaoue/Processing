int barWidth = 20;
int lastBar = -1;

void setup() {
  size(506, 253);
  noStroke();
  background(0);
}

void draw() {
  changeColorTriangle(0, 0, width / 2, 0, width /2, height / 2, 255);
  changeColorTriangle(width / 2, 0, width, 0, width /2, height / 2, 255);
  changeColorTriangle(0, 0, 0, height, width /2, height / 2, 255);
  changeColorTriangle(width, 0, width, height, width /2, height / 2, 255);
  changeColorTriangle(0, height, width / 2, height, width /2, height / 2, 255);
  changeColorTriangle(width / 2, height, width, height, width /2, height / 2, 255);

  randomConcentrationLine(randomInt(3, 5), 2);
  adjustedWidthText("money", width / 2, height / 2, randomInt(64, 96), 128, 1);
}

int randomInt(int low, int high) {
  return int(random(low, high));
}

void randomFill(int r, int g, int b) {
  fill(random(r), random(g), random(b));
}  

void randomStroke(int r, int g, int b) {
  stroke(random(r), random(g), random(b));
}

void changeColorTriangle(int x1, int y1, int x2, int y2, int x3, int y3, int fillColor) {
  randomFill(fillColor, fillColor, fillColor);
  triangle(x1, y1, x2, y2, x3, y3);
}

void adjustedWidthText(String writeText, int x, int y, int textPixelSize, int fillColor, int rotateAngle) {
  rotate(radians(random(-rotateAngle, rotateAngle)));
  randomFill(fillColor, fillColor, fillColor);
  textSize(textPixelSize);
  float textWidth = textWidth(writeText); 
  text(writeText, x - (textWidth / 2), y + (textPixelSize / 4));
}


void randomConcentrationLine(int angle, int lineWeight) {
  translate(width/2.0, height/2.0);
  pushMatrix();
  for (int i = 0; i < 360/angle; i++) {
    rotate(radians(angle));
    stroke(128, 128, 128, 240);
    strokeWeight(lineWeight);
    line(random(width / 10), random(height / 10), width, height);
  }
  noStroke();
  popMatrix();
  resetMatrix();
}
