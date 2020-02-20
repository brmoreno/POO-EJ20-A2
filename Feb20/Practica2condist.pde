class Particula{ 
  float x,y;
  float dx,dy;
  float r;
  color c;
  
  Particula(float x_, float y_, float r_, color c_){
    x = x_;
    y = y_;
    dx = random(-1,1);
    dy = random(-1,1);
    r = r_;
    c = c_;
  }
  
  void display(){
    noStroke();
    fill(c);
    ellipse(x,y,r*2,r*2);
  }
  
  void mover(){
    x+=dx;
    y+=dy;
    if(x<0+r){
      dx =abs(dx);
    }
    if(x>width-r){
      dx =-abs(dx);
    }
    if(y<0+r){
      dy =abs(dy);
    }
    if(y>height-r){
      dy =-abs(dy);
    }
  }
}

class Avatar{
  float x,y;
  float velocidad;
  float direccion;
  int tam;
  float radioDeColision;
  boolean giraSM;
  boolean giraSC;
  boolean avanza;
  int vida = 1000;
 
  
  Avatar(){
    x = width/2;
    y = height/2;
    velocidad = 3;
    direccion = 0;
    tam = 40;
    radioDeColision = sqrt(3)/6*tam;
  }
  
  void mover(){ 
    if(giraSM){
      direccion += 0.1;
    }
    if(giraSC){
      direccion -= 0.1;
    }
    if(avanza){
      x+=cos(direccion)*velocidad;
      y+= sin(direccion)*velocidad;
    }
    x = constrain(x,radioDeColision,width-radioDeColision);
    y = constrain(y,radioDeColision,height-radioDeColision);
  }
  
  //trabajo:
  void colision(Particula p){
    float distancia = dist(x,y,p.x,p.y);
    float sumaDeRadios = radioDeColision + p.r;
    if(distancia < sumaDeRadios){
      vida--;
    }
    
  }
  
  void displayVida(){
    /*
    parte 2; desarrolla el método display barra
    es una barra en la parte superior de la pantalla 
    su tamaño depende del atributo vida
    si la vida se vuelve cero, el juego se detiene 
    */
    
    fill(0);
    rect(0,0,vida/1000f*400,20);
  }
  
  
  void display(){
    noStroke();
    fill(255,0,0);
    pushMatrix();
    translate(x,y);
    rotate(direccion);
    float altura = sqrt(sq(tam)-sq(tam/2));
    float radio = tam/sqrt(3);
    fill(0,255,0);
    triangle(altura-radioDeColision,0,-radioDeColision, -tam/2,-radioDeColision,tam/2);
    fill(0,0,255);
    rect(-radioDeColision,-tam/2,-tam/10,tam);
    fill(255,0,0);
    ellipse(0,0,radioDeColision*2,radioDeColision*2);
    fill(255);
    ellipse(0,0,2,2);
    popMatrix(); 
  }  
  
  void enElPressed(){
    switch(key){
      case 'a':
        elAvatar.giraSC = true;
      break;
      case 'd':
        elAvatar.giraSM = true;
      break;
      case 's':
        elAvatar.avanza = true;
      break;
    }
  }
  
  void enElReleased(){
    switch(key){
      case 'a':
        elAvatar.giraSC = false;
      break;
      case 'd':
        elAvatar.giraSM = false;
      break;
      case 's':
        elAvatar.avanza = false;
      break;
    }
  }
}

class FlujoDePantallas{
  /*
  parte 3:
  declara la clase flujo de pantallas, existen 3 pantallas: inicio, juego fin
  la pantalla de fin te permite reiniciar tu juego;
  
  parte 4:
  refactoriza tu setup() y draw() usando una instancia de flujo de pantallas 
  */
}

ArrayList<Particula> particulas;
Avatar elAvatar;
int rango = 5000;
int tiempoParaunaNueva = 0; 

void setup(){
  size(400,400);
   particulas = new ArrayList<Particula>();  
   
   elAvatar = new Avatar();
}

void draw(){
  background(255);
  for(Particula p: particulas){
    p.display();
    p.mover();
    elAvatar.colision(p);
  }
  elAvatar.display();
  elAvatar.mover();
  if (millis()>tiempoParaunaNueva){
    nuevaParticula();
    tiempoParaunaNueva+= rango;
  }
  elAvatar.displayVida();
  println(elAvatar.vida);
}

void nuevaParticula(){
  float rad = random(10,50);
  float alaeatorioX = random(-1,1);
  float alaeatorioY = random(-1,1);
  float px,py;
  if (alaeatorioX<0){
    px = -rad;
  }
  else{
    px = width+rad;
  }
  
  if (alaeatorioY<0){
    py = -rad;
  }
  else{
    py = height+rad;
  }
  color c = color(random(255),random(255),random(255));
  particulas.add(new Particula(px,py,rad,c));
}



void keyPressed(){
  elAvatar.enElPressed();
}

void keyReleased(){
  elAvatar.enElReleased();  
}
