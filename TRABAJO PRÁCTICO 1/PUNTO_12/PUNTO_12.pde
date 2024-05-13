<<<<<<< Updated upstream
void setup() {
  size(800, 600);
 
=======
Tanque tanque;
Player player;

void setup() {
  size(800, 600);
  tanque = new Tanque(width/2, height/2);
  player = new Player();
>>>>>>> Stashed changes
}

void draw() {
  background(255);
<<<<<<< Updated upstream
  
=======
  player.updatePosition();
  player.display(); 
  tanque.dibujarTanque();
>>>>>>> Stashed changes
}
