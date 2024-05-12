class Player {
  PVector position;
  PImage image;
  
  Player(float x, float y, String imagen) {
    position = new PVector(x, y);
    image = loadImage(imagen);
    image.resize(50,50);
  }
  
  void updatePosition(float x, float y) {
    position.x = x;
    position.y = y;
  }
  
  PVector getPosition() {
    return position;
  }
  
  void display() {
    imageMode(CENTER);
    image(image, position.x, position.y);
  }
}
