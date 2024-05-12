Punto a, b, c,d;
Vector ab, bc,ac;
float escala = 20;

void setup() {
  size(800, 600);
  

  
 
}

void draw() {
  background(255);
  strokeWeight(2);
  stroke(0);
  line(200, height/2, 600, height/2); 
  line(width/2, 100, width/2, 500); 
  float punto_ax=-1;
  float punto_ay=-2;
  float punto_bx=4;
  float punto_by=-1;
  
   float punto_cx=5;
  float punto_cy=2;
 
  
 //Operación de resta
  //BD = AB.restar(AC);
 // Inicializar puntos A, B y C
  PVector a = new PVector((width/2)+punto_ax*20,(height/2) -punto_ay*20);
 PVector b= new PVector((width/2)+punto_bx*20,(height/2) -punto_by*20);
 
  PVector c= new PVector((width/2)+punto_cx*20,(height/2) -punto_cy*20);
  // Calcula los vectores que forman el paralelogramo
  PVector ab = PVector.sub(b, a);
  PVector bc = PVector.sub(c, b);

  // Dibuja los vectores
  drawVector(a, ab);
  drawVector(b, bc);
  stroke(200, 0, 0); 
 // BD.dibujar();
  
//Operación de suma
  //BD = AB.sumar(AC);
  //BD.dibujar();
  fill(100); 

  
 // Punto D = BD.destino;
  //stroke(80, 0, 0); 
  //line(B.x, B.y, D.x, D.y);
  //line(C.x, C.y, D.x, D.y);
  
  
  
}


void drawVector(PVector start, PVector vec) {
  stroke(0);
  strokeWeight(2);
  line(start.x, start.y, start.x + vec.x, start.y + vec.y);
}



void escalarPuntos() {
  float centerX = (width / 2)+20;
  float centerY = (height /2) +40;
  

 
  
}
