//head
float tamano;
float posicionHorizonal;
int posicionVert;

//setup
void setup(){
  size(400,400);
  background(255);
  tamano = random(20,100); 
}

//draw
void draw(){
  posicionHorizonal = mouseX;
  posicionVert = mouseY;
  println(posicionHorizonal);
  ellipseMode(CORNER);
  noStroke();
  fill(random(255),random(255),random(255));
  ellipse(posicionHorizonal,posicionVert,tamano,tamano);
  fill(random(255),random(255),random(255));
  rect(posicionHorizonal,posicionVert+tamano,tamano,tamano);
}
