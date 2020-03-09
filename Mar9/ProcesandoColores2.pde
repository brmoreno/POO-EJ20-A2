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
      float r = red(c)+sin(red(c)*0.1)*50;
      float g = map(sin(green(c)*0.07),-1,1,0,255);
      float b = blue(c) + sin(i*0.01)*100;
      stroke(r,g,b);
      point(i,j);  
     }
  }
}
