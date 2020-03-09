PImage gato;

void setup(){
  size(970,450);
  gato = loadImage("gato.jpg");
  background(255);
 
}

void draw(){
  for(int i = 0; i<gato.width; i+= 1){
    for(int j = 0; j<gato.height; j+= 1){
      //tomar el color almacenado en i,j de mi PIMage
      color c= gato.get(i,j);
      color cdesfasado= gato.get(i+30,j);
      float r = red(c);
      float g = green(cdesfasado);
      float b = blue(c);
      stroke(r,g,b);
      point(i,j);  
     }
  }
}
