import processing.sound.*;
SoundFile sonido;
PFont letraMaquina;
PFont Arial;
String texto;


void setup(){
size(400,400);
  letraMaquina = loadFont("AmericanTypewriter-48.vlw");
  Arial = createFont("Arial" , 45);
  texto = "foo bar baz qux";
  sonido = new SoundFile(this, "paris.mp3");
  sonido.loop();
}

void draw(){
  background(255);
  fill(random(255));
  //textSize(40);
  textFont(letraMaquina);
  text("foo bar baz qux", 30,30);
  
  textFont(Arial);
  text(texto, mouseX, 80);
  sonido.amp(map(mouseX,0,400,0,1));
  sonido.rate(map(mouseY,0,400,0,4));
}

void mousePressed(){
  texto = "otra cosa";
}
