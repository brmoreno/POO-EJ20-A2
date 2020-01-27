int colorDelLadoDerecho;
int colorDelLadoIzquierdo;

void setup(){
  size(400,400);
}

void draw(){
  println(mouseX);
  // si estoy del lado derecho o izquierdo: posicion del mouseX, ancho de pantalla 
  if(mouseX < width/2 ){
    //cambio el valor de las variables de acuerdo a ese estado
     colorDelLadoDerecho= 255;
     colorDelLadoIzquierdo= 0;
  }
  else if(mouseX == width/2){
    colorDelLadoDerecho= 255;
     colorDelLadoIzquierdo= 255;
  }
  else{
   colorDelLadoDerecho= 0;
   colorDelLadoIzquierdo= 255;
  }
  
  //utilizo estas variables para presentar mi programa
  fill(colorDelLadoIzquierdo);
  rect(0,0,200,400);
  fill(colorDelLadoDerecho);
  rect(200,0,200,400);  
}
