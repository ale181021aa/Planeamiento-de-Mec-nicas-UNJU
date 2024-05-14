class Tanque {
  PVector position;
  float angulo;
  float distanciaMaxima = 250;
  ArrayList<Proyectil> proyectiles;
  int timer = 0; // Contador
  int intervalo = 30; // Intervalo de tiempo entre disparos (en frames)


  Tanque(float x, float y) {
    position = new PVector(x, y);
    proyectiles = new ArrayList<Proyectil>();
  }

  void dibujarTanque() {
    fill(150);
    rectMode(CENTER);
    rect(position.x, position.y, 60, 40);

    // Cañón
    fill(100);
    pushMatrix();
    translate(position.x + 20 * cos(angulo), position.y + 20 * sin(angulo)); // Ajusta el punto de rotación para que el cañón gire desde uno de los extremos
    rotate(angulo);
    rect(0, 0, 40, 10);
    popMatrix();
  }

  void disparar() {
    Proyectil proyectil = new Proyectil(position.x + cos(angulo) * 65, position.y + sin(angulo) * 65, angulo);
    proyectiles.add(proyectil);
  }


  void direccionCañon(Player player) {
    // Ángulo hacia el jugador
    PVector direccion = PVector.sub(player.pos, position);
    angulo = atan2(direccion.y, direccion.x);
    
    text("Àngulo : "+(-(angulo/PI*180)),100,40);

    float distancia = direccion.mag();
    text("Distancia: "+distancia, 100,70);
    
    if (distancia < distanciaMaxima && timer <=0) {
      disparar();
      timer = intervalo;
    }

    // Muestra los proyectiles
    for (int i = proyectiles.size() - 1; i >= 0; i--) {
      Proyectil proyectil = proyectiles.get(i);
      proyectil.update();
      proyectil.display();

      if (proyectil.position.x < 0 || proyectil.position.x > width || proyectil.position.y < 0 || proyectil.position.y > height) {
        proyectiles.remove(i);
      }
    }
    if (timer > 0) {
      timer--;
    }
  }
}
