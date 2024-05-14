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
  stroke(200, 0, 0);
  strokeWeight(2);
  drawVector(a, ab);
  drawVector(b, bc);
  drawVector(c, cd);
  drawVector(d, da);
 
 //------Operaciones----//////
 stroke(100, 0, 0);
  strokeWeight(2);
 ac=ab.restar(bc);  //Resta los vectores ab y bc para obtener el nuevo vector ac
 drawVector(a, ac);
 
 ac=ab.sumar(bc);  //Suma los vectores ab y bc para obtener el nuevo vector ac
 drawVector(a, ac);
}

// Función para dibujar un vector desde un punto de inicio
void drawVector(Punto start, Vector vect) {
  PVector pVec = vect.toPVector();

  line(start.x, start.y, start.x + pVec.x, start.y + pVec.y);
  
  text("D" + "= ("+round(d.x/escala)+" , "+round(d.y/escala)+")",360,320);
  text("A" + "= ("+round(a.x/escala)+" , "+round(a.y/escala)+")",300,440);
  text("B" + "= ("+round(b.x/escala)+" , "+round(b.y/escala)+")",520,400);
  text("C" + "= ("+round(c.x/escala)+" , "+round(c.y/escala)+")",540,260);
  
  fill(100);
  text("AB" + "("+round((b.x-a.x)/escala)+" , "+round(-(b.y-a.y)/escala)+")",400,400);
  text("BC" + "("+round((c.x-b.x)/escala)+" , "+round(-(c.y-b.y)/escala)+")",540,330);
  text("CD" + "("+round((d.x-c.x)/escala)+" , "+round(-(d.y-c.y)/escala)+")",270,380);

  // Calcular el ángulo del vector
    float angle = atan2(start.y + pVec.y , start.x + pVec.x);
    
    // Calcular las coordenadas de las puntas de la flecha
    float arrowSize = 8;
    float x1 = start.x + pVec.x - arrowSize * cos(angle - PI / 6);
    float y1 = start.y + pVec.y - arrowSize * sin(angle - PI / 6);
    float x2 = start.x + pVec.x - arrowSize * cos(angle + PI / 6);
    float y2 = start.y + pVec.y - arrowSize * sin(angle + PI / 6);
    
    // Dibujar la flecha
    line(start.x + pVec.x, start.y + pVec.y, x1, y1);
    line(start.x + pVec.x, start.y + pVec.y, x2, y2);
}
