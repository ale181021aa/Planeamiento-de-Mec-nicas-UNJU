class Enemy {
  PVector position;
  PImage image;
  float direction;
  
  Enemy(float x, float y, String imagen) {
    position = new PVector(x, y);
    image = loadImage(imagen);  
    image.resize(50,50);
  }
  
  PVector getPosition() {
    return position;
  }
  
  void display() {
    imageMode(CENTER);
    image(image, position.x, position.y);
  }
  
//Lanzamiento 
 void fireball(PVector playerPosition) {
    stroke(255, 0, 0);
    strokeWeight(2);
    line(position.x, position.y, playerPosition.x, playerPosition.y);
  }
}
