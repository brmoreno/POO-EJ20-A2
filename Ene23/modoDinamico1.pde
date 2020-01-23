//head
float tamano;
float posicionHorizonal;
int posicionVert;

//setup
void setup(){
  size(400,400);
  background(255);
  tamano = random(20,100);
  posicionHorizonal = width/2;
  posicionVert = ceil(random(0,300));  
}

//draw
void draw(){
  background(255);
  //modifica el valor que sumas o restas y ve los resultados
  posicionHorizonal = posicionHorizonal-0.5;
  ellipseMode(CORNER);
  fill(random(255),random(255),random(255));
  ellipse(posicionHorizonal,posicionVert,tamano,tamano);
  fill(random(255),random(255),random(255));
  rect(posicionHorizonal,posicionVert+tamano,tamano,tamano);
}
