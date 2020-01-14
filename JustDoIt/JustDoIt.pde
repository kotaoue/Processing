import gifAnimation.*;
GifMaker gifExport;

int count = 0;

void setup() {
  size(200, 200);
  frameRate(30);

  gifExport = new GifMaker(this, "export.gif"); 
  gifExport.setRepeat(0);
  gifExport.setQuality(10);
  gifExport.setDelay(50);
}

void draw() {
  background(255); 
  noFill();
  stroke(0);
  float mark_width = width * 0.75;
  float mark_height = height * 0.4;
  arc(width/2 - (mark_width / 8), height/5, mark_width, mark_height, radians(5), radians(125));

  if (count >= 10) {
    arc(15, 150, 15, 40, radians(0), radians(120));
  }
  if (count >= 20) {
    arc(40, 150, 15, 40, radians(0), radians(180));
  }
  if (count >= 30) {
    arc(65, 155, 15, 10, radians(90), radians(270));  
    arc(65, 165, 15, 10, radians(-90), radians(90));
  }
  if (count >= 40) {
    line(80, 150, 90, 150);
    line(85, 150, 85, 170);
  }
  if (count >= 50) {
    line(110, 150, 110, 170);
    arc(110, 160, 15, 20, radians(-90), radians(90));

    arc(135, 160, 15, 20, radians(0), radians(360));
  }
  if (count >= 60) {
    line(155, 150, 155, 170);

    line(170, 150, 180, 150);
    line(175, 150, 175, 170);
  }

  count++;

  if (frameCount <= 50 * 2) {
    gifExport.addFrame();
  } else {
    gifExport.finish();
  }
}
