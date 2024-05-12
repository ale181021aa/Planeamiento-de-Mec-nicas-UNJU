Punto a,b,c,d;
Vector ab,da,bc,cd,ac;

float ax=-1;
float ay=-2;
float bx=4;
float by=-1;
float cx=5;
float cy=2;
float escala=40;

void setup() {
  size(700, 700);
  
// Define los puntos de los vectores
a = new Punto((width/2)+ax*escala, (height/2)-ay*escala);
b = new Punto((width/2)+bx*escala, (height/2)-by*escala);
c = new Punto((width/2)+cx*escala, (height/2)-cy*escala);
float dx = b.x + (c.x - b.x) - (b.x - a.x);
float dy = b.y + (c.y - b.y) - (b.y - a.y);
d= new Punto(dx, dy);
 
// Define los vectores que forman el paralelogramo
ab = new Vector(a, b);
bc = new Vector(b, c);
cd=new Vector(c,d);
da=new Vector(d,a);
  
 
}

void draw() {
  background(255);
  strokeWeight(2);
  stroke(0);
  line(200, height/2, 600, height/2); 
  line(width/2, 100, width/2, 500); 
 
 // Dibuja los vectores
  drawVector(a, ab);
  drawVector(b, bc);
  drawVector(c, cd);
  drawVector(d, da);
 
 
}

// Función para dibujar un vector desde un punto de inicio
void drawVector(Punto start, Vector vect) {
  PVector pVec = vect.toPVector();
 stroke(200, 0, 0);
  strokeWeight(2);
  line(start.x, start.y, start.x + pVec.x, start.y + pVec.y);
  
}
