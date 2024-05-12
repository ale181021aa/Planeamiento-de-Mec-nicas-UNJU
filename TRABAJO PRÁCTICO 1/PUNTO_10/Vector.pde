class Vector {
  Punto inicio;
  Punto fin;
  
  Vector(Punto inicio, Punto fin) {
    this.inicio = inicio;
    this.fin = fin;
  }
  
  Vector sumar(Vector otro) {
    float nuevoX = this.fin.x + otro.fin.x - otro.inicio.x;
    float nuevoY = this.fin.y + otro.fin.y - otro.inicio.y;
    return new Vector(this.inicio, new Punto(nuevoX, nuevoY));
  }
  
    Vector restar(Vector otro) {
    float nuevoX = this.fin.x - otro.fin.x + otro.inicio.x;
    float nuevoY = this.fin.y - otro.fin.y+ otro.inicio.y;
    return new Vector(this.inicio, new Punto(nuevoX, nuevoY));
  }
 
  PVector toPVector() {
    return new PVector(fin.x - inicio.x, fin.y - inicio.y);
  }
}
