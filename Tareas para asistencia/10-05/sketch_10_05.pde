float a, b, c;

void setup() {
  size(600, 600);

  a = 0.03;
  b = 0;
  c = 50;
}

void draw() {
  background(255);
  stroke(0);
  line(100, height/2, 500, height/2); 
  line(width/2, 100, width/2, 500); 
  
  beginShape();
  noFill();
  stroke(150, 0, 0); 
  for (float x = -width/2; x < width/2; x+=0.1) {
    float y = a*pow(x,2) + b*x + c;
    point(width/2 + x, height/2 - y);
  }
  endShape();
}
