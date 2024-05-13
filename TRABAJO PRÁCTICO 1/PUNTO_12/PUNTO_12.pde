
Player player;

void setup() {
  size(800, 600);
 player = new Player();
}

void draw() {
  background(255);
  player.updatePosition();
  player.display(); 
}
