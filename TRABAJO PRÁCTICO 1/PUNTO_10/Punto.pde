class Punto {
  float x;
  float y;
  
  Punto(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  void escalar(float escala) {
    x *= escala;
    y *= escala;
  }
  
  void trasladar(float tx, float ty) {
    x += tx;
    y += ty;
  }
}
