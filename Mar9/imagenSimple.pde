
// la clase PImage me permite almacenar un mapa de bits en Processing
PImage gato;


void setup(){
  size(970,450);
// así instancio mi objeto, el archivo tiene que estar en la carpeta data
  gato = loadImage("gato.jpg");
}

void draw(){
 //imageMode me permite modificar la forma en la que la función image interpeta los patámetros
 //CORNER,CENTER, CONRERS
  //imageMode(CORNER);
  
  //tint me permite entintar la imagen y modificar su alfa
  //tint (255, 0 , 90);
  
  // lo dibujo con image pasando pImage, posición y tamaño
  image(gato,0,0,970,450);
}
