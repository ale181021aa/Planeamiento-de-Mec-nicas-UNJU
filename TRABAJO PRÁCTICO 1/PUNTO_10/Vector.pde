class Vector {
  Punto origen;
  Punto destino;
  
  Vector(Punto origen, Punto destino) {
    this.origen = origen;
    this.destino = destino;
  }
  
  Vector sumar(Vector otro) {
    float nuevoX = this.destino.x + otro.destino.x - otro.origen.x;
    float nuevoY = this.destino.y + otro.destino.y - otro.origen.y;
    return new Vector(this.origen, new Punto(nuevoX, nuevoY));
  }
  
    Vector restar(Vector otro) {
    float nuevoX = this.destino.x - otro.destino.x + otro.origen.x;
    float nuevoY = this.destino.y - otro.destino.y+ otro.origen.y;
    return new Vector(this.origen, new Punto(nuevoX, nuevoY));
  }
  
  
  
  
  
  
  
  
  
  
}
