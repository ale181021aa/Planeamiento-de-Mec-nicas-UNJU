class Proyectil {
  PVector position;
  PVector vel;
  float speed=5;
  
  Proyectil(float x, float y, float angulo) {
    position = new PVector(x, y);
    vel = PVector.fromAngle(angulo).mult(speed);
  }
  
  void update() {
    position.add(vel);
  }
  
  void display() {
    fill(0);
    ellipse(position.x, position.y, 10, 10);
  }
}
