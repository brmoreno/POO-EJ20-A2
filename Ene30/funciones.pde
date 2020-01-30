//head
float tamano;
float posicionHorizonal;
int posicionVert;
float delta;

//setup
void setup(){
  size(400,400);
  background(255);
  tamano = random(20,100);
  posicionHorizonal = 0;
  posicionVert = ceil(random(0,300)); 
  delta = 2;
}

//draw
void draw(){

  if(posicionHorizonal>width-tamano){
    delta = -2;
  }
  if(posicionHorizonal<0){
    delta = 2;
  }
  
  posicionHorizonal+=delta;
 dibujarMono(posicionHorizonal,posicionVert,tamano);
}


void dibujarMono(float x_, float y_, float t_){
  float altura = conAltura(t_);
  triangle(x_,y_+altura,x_+t_,y_+altura,x_+(t_/2),y_);
  ellipseMode(CORNER);
  ellipse(x_,y_+altura,t_,t_);
  rect(x_,y_+altura+t_,t_,t_);
}

float conAltura(float t_){
  float altura = sqrt(sq(t_)-sq(t_/2));
  return (altura);
}
