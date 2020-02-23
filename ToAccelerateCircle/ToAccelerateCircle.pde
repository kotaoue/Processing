float _diam;
boolean isFirstTime = true;
int frameRate = 25;

void setup() {
  size(320, 320);
  frameRate(frameRate);

  background(128);
}

void draw() {
  if (_diam < (width * random(1, 2))) {
    boolean isEvenNumber = ((_diam / 2) == 0); 
    int fillColor = isEvenNumber ? 255 : 0;
    fill(fillColor, 2);
    stroke(0, random(50, 100));

    float centerX = (width /2) * random(0.95, 1.05) ;
    float centerY = (height /2) * random(0.95, 1.05) ;

    ellipse(centerX, centerY, _diam, _diam);

    _diam+= ((int)random(1, 16));
  } else {
    _diam = 0;
    frameRate(frameRate+=(int)random(frameRate / 3, frameRate / 2));
  }
}
