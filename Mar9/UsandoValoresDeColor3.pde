PImage gato;

void setup(){
  size(970,450);
  gato = loadImage("gato.jpg");
  background(255);
 
}

void draw(){
  for(int i = 0; i<gato.width; i+= 20){
    for(int j = 0; j<gato.height; j+= 20){
      //tomar el color almacenado en i,j de mi PIMage
      color c= gato.get(i,j);
      stroke(c);
      noFill();
      strokeWeight(random(0.5));
      bezier(i,j,i+random(-100,100),j+random(-100,100),i+random(-100,100),j+random(-100,100),i+random(-100,100),j+random(-100,100));
    }
  }
}
