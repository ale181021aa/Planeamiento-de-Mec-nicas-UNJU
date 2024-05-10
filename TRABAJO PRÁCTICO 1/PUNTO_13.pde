PVector position;
PVector velocity;
PVector inicio;
PVector finall;

void setup() {
  size(600, 400);
  position = new PVector(100, 200);
  velocity = new PVector(5, 2);
  inicio = new PVector(100, 250);
  finall = new PVector(500, 250);
}

void draw() {
  background(255);
  
  // Dibujar la pelota
  fill(255, 0, 0);
  ellipse(position.x, position.y, 20, 20); 
  // Dibujar la pared
  stroke(0);
  line(inicio.x, inicio.y, finall.x, finall.y);
  
mover();
}


void mover(){
  
   // Mover la pelota
  position.add(velocity);
  
  // Verificar colisión con la pared
  if (position.y >= inicio.y && position.y <= finall.y) {
    // Calcular el vector entre la posición actual y la pared
    PVector direction = PVector.sub(finall, inicio).normalize();
    // Calcular el producto punto entre la velocidad de la pelota y la dirección de la pared
    float dot = velocity.dot(direction);
    // Reflexionar la velocidad de la pelota usando el producto punto y la dirección de la pared
    PVector reflection = PVector.mult(direction, 2 * dot);
    velocity.sub(reflection);
  }
  
  // Verificar límites horizontales
  if (position.x <= 0 || position.x >= width) {
    velocity.x *= -1;
  }
  
  // Verificar límites verticales
  if (position.y <= 0 || position.y >= height) {
    velocity.y *= -1;
  }
  
  
}
