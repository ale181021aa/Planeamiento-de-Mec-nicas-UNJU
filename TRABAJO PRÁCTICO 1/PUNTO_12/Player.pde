class Player {
  PVector pos;
  
  Player() {
    pos = new PVector(width/2, height/2);
  }
  
  void update() {
    pos.x = mouseX;
    pos.y = mouseY;
  }
  
  void mostrar() {
    // Dibuja el jugador
    fill(255, 0, 0);
    ellipse(pos.x, pos.y, 20, 20);
  }
}
