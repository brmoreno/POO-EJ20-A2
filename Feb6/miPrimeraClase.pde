class MonoConSombrero{
  //Atributos
  float r,g,b;
  float tamano;
  float x,y;
  float dx,dy;
  
  //Metodos
  MonoConSombrero(){
    r = random(255);
    g = random(255);
    b = random(255);
    tamano = random(10,100);
    x = random(400);
    y = random(400);
    dx = random(-1,1);
    dy = random(-1,1);
  }
  
  MonoConSombrero(float r_, float g_, float b_, float x_, float y_, float t_){
    r = r_;
    g = g_;
    b = b_;
    x = x_;
    y = y_;
    tamano = t_;
  }
  
  void mover(){
    x += dx;
    y += dy; 
  }
  
  void display(){
    noStroke();
    float altura = conAltura(tamano);
    fill(r,g,b);
    triangle(x,y+altura,x+tamano,y+altura,x+(tamano/2),y);
    ellipseMode(CORNER);
    fill(#F2C1D0);
    ellipse(x,y+altura,tamano,tamano);
    fill(r,g,b);
    rect(x,y+altura+tamano,tamano,tamano);
  }
  
  float conAltura(float t_){
    float altura = sqrt(sq(t_)-sq(t_/2));
    return (altura);
  }  
}

//head
MonoConSombrero uno;
MonoConSombrero otro;
MonoConSombrero aquel;

void setup(){
  size(400,400);
  uno = new MonoConSombrero();
  otro = new MonoConSombrero();
  aquel = new MonoConSombrero(255,0,0,200,200,40);
}

void draw(){
  background(255);
  uno.display();
  uno.mover();
  otro.display();
  otro.mover();
  aquel.display();
  println(aquel);
}
