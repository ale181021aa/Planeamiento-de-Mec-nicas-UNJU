class Enemy {
  PVector position;
  PImage image;
  float direction;
  
  Enemy(float x, float y, String imagen) {
    position = new PVector(x, y);
    image = loadImage(imagen);  
    image.resize(150,150);
    direction = PI / 2;
  }
  
  PVector getPosition() {
    return position;
  }
   float getDirection() {
    return direction;
  }
  
  void display() {
    imageMode(CENTER);
    image(image, position.x, position.y);
  }
  
//Lanzamiento 
 void fireball(PVector directionPlayer) {
    stroke(255, 0, 0);
    strokeWeight(2);
     projectil.add(new Projectil(position, directionPlayer,"fuego.png"));
  }
}
