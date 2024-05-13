class Tanque {
  PVector position;
  float angulo;
   float distanciaMaxima = 300;
    ArrayList<Proyectil> proyectiles;
    
    
  Tanque(float x, float y) {
    position = new PVector(x, y);
     proyectiles = new ArrayList<Proyectil>();
  }
  
  void dibujarTanque() {
    fill(150);
    rectMode(CENTER);
    rect(position.x, position.y, 60, 40); 
    
    // Cañón
    fill(100);
    pushMatrix();
    translate(position.x + 20 * cos(angulo), position.y + 20 * sin(angulo)); // Ajusta el punto de rotación para que el cañón gire desde uno de los extremos
    rotate(angulo);
    rect(0, 0, 40, 10);
    popMatrix();
  }
  
   void disparar() {
    Proyectil proyectil = new Proyectil(position.x + cos(angulo) * 65, position.y + sin(angulo) * 65, angulo);
    proyectiles.add(proyectil);
  }
  
  
  
  
  
  
}
