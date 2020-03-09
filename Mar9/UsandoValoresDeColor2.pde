PImage gato;

void setup(){
  size(970,450);
  gato = loadImage("gato.jpg");
 
}

void draw(){
  background(255);
  for(int i = 0; i<gato.width; i+= 15){
    for(int j = 0; j<gato.height; j+= 15){
      //tomar el color almacenado en i,j de mi PIMage
      color c= gato.get(i,j);
      fill(c);
      textSize(random(2,100));
      text(char(round(random(65,127))),i,j);
    }
  }
}
