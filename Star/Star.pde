void setup() {
  size(400, 400);
  background(0);
}

void draw() {
  randColorStar(50, 50, 50, 20, 5);
  randColorStar(150, 50, 50, 25, 5);
  randColorStar(250, 50, 50, 40, 5);
  randColorStar(350, 50, 50, 50, 5);
  randColorStar(50, 150, 50, 20, 6);
  randColorStar(150, 150, 50, 25, 6);
  randColorStar(250, 150, 50, 40, 6);
  randColorStar(350, 150, 50, 50, 6);
  randColorStar(50, 250, 50, 20, 7);
  randColorStar(150, 250, 50, 25, 7);
  randColorStar(250, 250, 50, 40, 7);
  randColorStar(350, 250, 50, 50, 7);
  randColorStar(50, 350, 50, 20, 8);
  randColorStar(150, 350, 50, 25, 8);
  randColorStar(250, 350, 50, 40, 8);
  randColorStar(350, 350, 50, 50, 8);
}

void randColor() {
  colorMode(HSB, 360, 100, 100);
  fill(random(0, 360), 100, 100);
}

void star(int x, int y, int outer, int inner, int point) {
  pushMatrix();
  translate(x, y);
  rotate(radians(-90)); 
  beginShape();
  for (int i = 0; i < point * 2; i++) {
    float R = (i % 2 == 0) ? outer : inner;
    float xpos = (R * cos(radians(360 / (point * 2) * i)));
    float ypos = (R * sin(radians(360 / (point * 2) * i)));        
    vertex(xpos, ypos);
  }
  endShape(CLOSE);
  popMatrix();
}

void randColorStar(int x, int y, int outer, int inner, int point) {
  randColor();
  star(x, y, outer, inner, point);
}
