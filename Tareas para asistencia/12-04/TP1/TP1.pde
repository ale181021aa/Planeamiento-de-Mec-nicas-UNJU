Vector vectorPers;
PVector posTesoro;
Vector vectorPersTesoro;

public void setup(){
 size(700,700);
 vectorPers=new Vector(new PVector(0,0), new PVector(40,0));
 posTesoro=new PVector (width/2, height/2);
 vectorPersTesoro=new Vector();
  
}

public void draw(){
  
  background(255);
  dibujarTesoro();
  vectorPers.setOrigen(new PVector(mouseX, mouseY));
  vectorPers.display();
  dibujarVectorPersTesoro();
  mensaje();
}

public void dibujarVectorPersTesoro(){
  vectorPersTesoro.setOrigen(vectorPers.getOrigen());
  vectorPersTesoro.setDestino(PVector.sub(posTesoro,vectorPers.getOrigen()).normalize().mult(40));
  vectorPersTesoro.display();
  
}

public void dibujarTesoro(){
 strokeWeight(10);
 point(posTesoro.x,posTesoro.y);
}

public void mensaje(){
  float producto=vectorPers.productoPunto(vectorPersTesoro);
  println(producto);
  textSize(30);
  fill(#1009EA);
  text(producto,100,20);
  
  if(producto <0){
   text("El tesoro está atrás",100,40);
  }else{
     if(producto>0){
     text("El tesoro está adelante",100,40);
   
 }
  }
}
