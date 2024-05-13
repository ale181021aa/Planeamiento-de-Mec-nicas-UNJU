
Tanque tanque;
Player player;

void setup() {
  size(800, 600);
  tanque = new Tanque(width/2, height/2);
  player = new Player();

}

void draw() {
  background(255);

  player.updatePosition();
  player.display(); 
  tanque.dibujarTanque();

}
