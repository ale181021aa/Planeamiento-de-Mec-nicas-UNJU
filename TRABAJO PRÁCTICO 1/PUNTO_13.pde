PVector position;
PVector velocity;
PVector inicio;
PVector finall;

void setup() {
  size(600, 400);
  position = new PVector(100, 200);
  velocity = new PVector(5, 2);
  inicio = new PVector(300, 0);
 finall = new PVector(300, height);
}

void draw() {
  background(255);
  
  // Dibujar la pared
  stroke(0);
  line(inicio.x, inicio.y, finall.x, finall.y);
  
  // Dibujar la pelota
  fill(255, 0, 0);
  ellipse(position.x, position.y, 20, 20);
  
}
