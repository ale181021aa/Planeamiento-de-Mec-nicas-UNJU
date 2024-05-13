class Projectil {
  PVector position;
  PVector velocity;
  PImage image;
  float speed = 5;
  
  Projectil(PVector start, PVector direction, String imagen) {
   position = new PVector(start.x, start.y);
   velocity = new PVector(direction.x, direction.y).setMag(speed);
   image = loadImage(imagen);  
   image.resize(50,50);
  }
  
  void update() {
    position.add(velocity);
  }
  
  void display() {
    imageMode(CENTER);
    image(image, position.x, position.y);
    fill(255, 0, 0);
    noStroke();
  }
  
  boolean fueraDePantalla() {
    return position.x < 0 || position.x > width || position.y < 0 || position.y > height;
  }
}
