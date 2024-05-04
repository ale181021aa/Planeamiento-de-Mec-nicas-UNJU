PVector circle;
PVector r;

public void setup(){
  size(700,700);
  circle=new PVector(width/2, height/2);
  r=new PVector(50,50);
}

public void draw(){
  background(0);
  
  circle.x=(circle.x+1);
  circle.y=(circle.y+1);
  if(circle.x>width ){
  circle.x=0;
  }
   if(circle.x<0 ){
  circle.x=width;
  }
   if(circle.y>height ){
  circle.y=0;
  }
   if(circle.y<0 ){
  circle.y=height;
  }
  
  circle(circle.x,circle.y,60);

  
  r.x=mouseX;
  r.y=mouseY;
    rect(r.x,r.y,40,40);
  
  float distancia=r.dist(circle);
  if(distancia<= 30){
    textSize(100);
   text("Perdiste", 130,height/2-50) ;
    
  }
}
