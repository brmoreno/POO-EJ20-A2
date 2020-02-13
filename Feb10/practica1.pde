class Particula{
  float x,y;
  float dx,dy;
  float r;
  color c;
  
  Particula(int x_, int y_, float r_, color c_){
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

Particula una;

void setup(){
  size(400,400);
  una = new Particula(200,200,50,color(255,0,0));
}

void draw(){
  background(255);
   una.display();
   una.mover(); 
}
