Player player;
Enemy enemy;

float campoVision=radians(30);


void setup() {
  size(800, 600);
  player = new Player(width/2, height/2, "player.png");
  enemy = new Enemy(width/4, height/2, "enemy.png");
}


void draw() {
  background(255);
  player.updatePosition(mouseX, mouseY);  
  player.display();
  enemy.display();
  detectarVision();

  
  
}

void detectarVision(){
  
  if (player.getPosition().x > enemy.getPosition().x) { 
  // Mediante el producto punto calcula dirección del jugador respecto al enemigo
    PVector direction_Player = PVector.sub(player.getPosition(), enemy.getPosition()).normalize();
   
   // Calcula el ángulo entre la dirección del enemigo y la dirección al jugador
    float anguloPlayer = atan2(direction_Player.y, direction_Player.x) ;
    
    // Si el ángulo está dentro del campo de visión del enemigo, disparar
    if (abs(anguloPlayer) < campoVision / 2) {
      // Disparar bola de fuego
      enemy.fireball(player.getPosition());
    }
    
    
  }  
  
}
