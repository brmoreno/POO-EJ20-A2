color colorRelleno[] = new color[100];
float x[] = new float[100];
float y[] = new float[100];
float t[]  = new float[100];
float dx[] = new float[100];
float dy[] = new float[100];
float posX;
float posY;

void setup(){
size(400,400);
  for(int i = 0; i<100; i++){
    colorRelleno[i] = color(random(255),random(255),random(255));
    x[i] = random(400);
    y[i] = random(400);
    t[i] = random(15,70);
    dx[i] = random(-1,1);
    dy[i] = random(-1,1);
  }  
  posX = width/2;
  posY = height/2;
}

void draw(){
  background(255);
  for(int i= 0; i<100; i++){
    x[i]+=dx[i];
    y[i]+=dy[i];
    //colorRelleno[i]+= 0.1;
    dibujarMono(x[i],y[i],t[i],colorRelleno[i]);
  }
  
  if(keyPressed){
    println(key);
    switch(key){
      case 'w':
        posY--;
      break;
      case 's':
        posY++;
      break;
      case 'a':
        posX--;
      break;
      case 'd':
        posX++;
      break;
    }
  } 
  dibujarPersonaje(posX,posY,30);
}


void dibujarMono(float x_, float y_, float t_, color c_){
  noStroke();
  float altura = conAltura(t_);
  fill(c_);
  triangle(x_,y_+altura,x_+t_,y_+altura,x_+(t_/2),y_);
  ellipseMode(CORNER);
  fill(#F2C1D0);
  ellipse(x_,y_+altura,t_,t_);
  fill(c_);
  rect(x_,y_+altura+t_,t_,t_);
}

float conAltura(float t_){
  float altura = sqrt(sq(t_)-sq(t_/2));
  return (altura);
}

void dibujarPersonaje(float x_, float y_, float t_){
  stroke(random(255),0,0);
  strokeWeight(3);
  float altura = conAltura(t_);
  fill(255,0,0);
  triangle(x_,y_+altura,x_+t_,y_+altura,x_+(t_/2),y_);
  ellipseMode(CORNER);
  ellipse(x_,y_+altura,t_,t_);
  rect(x_,y_+altura+t_,t_,t_);
}
