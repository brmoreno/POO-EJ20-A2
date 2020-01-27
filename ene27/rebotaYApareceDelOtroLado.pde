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
  
  /*
  //aparece del otro lado
  if(posicionHorizonal>width){
    println("El mono se salio de la pantalla");
    tamano = random(20,100);
    posicionHorizonal = -tamano;
     posicionVert = ceil(random(0,300));
  }
  */
  
  //rebota
  if(posicionHorizonal>width-tamano){
    delta = -2;
  }
  if(posicionHorizonal<0){
    delta = 2;
  }
  
  
  //background(255);
  posicionHorizonal = posicionHorizonal+delta;
  noStroke();
  ellipseMode(CORNER);
  fill(random(255),random(255),random(255));
  ellipse(posicionHorizonal,posicionVert,tamano,tamano);
  fill(random(255),random(255),random(255));
  rect(posicionHorizonal,posicionVert+tamano,tamano,tamano);
}
