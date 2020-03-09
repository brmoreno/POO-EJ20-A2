PImage gato;
PImage gatoEscalado;
PImage gatoCrop;
PImage gatoMascara;
PImage mascara;


void setup(){
  size(970,450);
  gato = loadImage("gato.jpg");
  gatoEscalado = loadImage("gato.jpg");
  gatoMascara = loadImage("gato.jpg");
  mascara = loadImage("mascara.tif");
  //la classe PImage tiene métodos que me permiten manipular mis imágenes
  
  //resize me perimte escalar mi PImage;
  gatoEscalado.resize(200,200);
  
  //get me permite tomar un área de la imagen;
  gatoCrop = gato.get(300,170,400,50);
  
  //mask me permite usar una imagen en escala de grises como máscara de recorte
  gatoMascara.mask(mascara);
  
  //filter me permite activar un filtro como BLUR, THRESHOLD, POSTERIZE etc..
  gato.filter(GRAY);
}

void draw(){
  background(255);
  image(gato,0,0);
  image(gatoMascara,0,0);
  image(gatoEscalado,0,0);
  image(gatoCrop,0,400);
}
