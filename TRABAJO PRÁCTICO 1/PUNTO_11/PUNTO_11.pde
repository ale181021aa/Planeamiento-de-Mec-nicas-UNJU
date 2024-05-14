Player player;
Enemy enemy;
ArrayList<Projectil> projectil;
float campoVision=radians(30);
int timer = 0; // Contador 
int intervalo = 30; // Intervalo de tiempo entre disparos (en frames)


void setup() {
  size(800, 600);
  player = new Player(width/2, height/2, "player.png");
  enemy = new Enemy(width/4, height/2, "enemy.png");
  projectil = new ArrayList<Projectil>();
}


void draw() {
  background(155);
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
    text("Ángulo:"+(-anguloPlayer*180/PI),100,50);
    
    // Si el ángulo está dentro del campo de visión del enemigo, disparar
    if (abs(anguloPlayer) < campoVision  && timer <=0) {
      // Disparar bola de fuego
      enemy.fireball(direction_Player);
      timer = intervalo;
    }
  }  
    // Actualizar y mostrar los proyectiles
  for (int i = projectil.size() - 1; i >= 0; i--) {
    Projectil projectile = projectil.get(i);
    projectile.update();
    projectile.display();
    if (projectile.fueraDePantalla()) {
      projectil.remove(i);
    }
  }
  
   if (timer > 0) {
    timer--;
  }
}
