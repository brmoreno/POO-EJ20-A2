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
    if(x<0+r || x>width-r){
      dx *=-1;
    }
    if(y<0+r || y>height-r){
      dy *=-1;
    }
  }
}

class Avatar{
  float x,y;
  float velocidad;
  float direccion;
  
  Avatar(){
    x = width/2;
    y = height/2;
    velocidad = 3;
    direccion = 0;
  }
  
  void mover(){
    if(keyPressed){
      if(key == 'a'){
        direccion -= 0.1;
      }
      if(key == 'd'){
        direccion += 0.1;
      }
      if(key == 's'){
        x+=cos(direccion)*velocidad;
        y+= sin(direccion)*velocidad;
      }
    }
  }
  
  void display(){
    noStroke();
    fill(255,0,0);
    pushMatrix();
    translate(x,y);
    rotate(direccion);
    fill(255,0,0);
    rectMode(CENTER);
    rect(0,0,50,50);
    fill(0,0,255);
    rect(20,0,10,50); 
    popMatrix();
  }
  
}

ArrayList<Particula> particulas;
Avatar elAvatar;

void setup(){
  size(400,400);
   particulas = new ArrayList<Particula>();
   for(int i = 0; i<5; i++){
     color c = color(random(255),random(255),random(255));
     particulas.add(new Particula(random(400),random(400),random(10,50),c));
   }
   elAvatar = new Avatar();
}

void draw(){
  background(255);
  for(Particula p: particulas){
    p.display();
    p.mover();
  }
  elAvatar.display();
  elAvatar.mover();
}

void mousePressed(){
  color c = color(random(255),random(255),random(255));
  particulas.add(new Particula(mouseX,mouseY,random(10,50),c));
}
