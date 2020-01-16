PFont font;
float x;
float y;
float speed;

void setup() {
  size(300, 300);
  // frameRate(30);
  x = 0;
  y = height / 2;
  speed = 3;
  font = loadFont("HiraginoSans-W0-24.vlw");
}

void draw() {
  background(255);

  textFont(font, 32); 
  fill(0);
  text("Maguro", x, y);

  x = x + speed;
  if (x >= width)
  {
    x = 0;
  }
}
