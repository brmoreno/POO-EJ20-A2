float dx;
void setup(){
size(400,400);
}

void draw(){
  dx+=0.05;
  background(255);
  for(int i= 0; i<400; i+=10){
    for(int j = 0; j<400; j+=10){
      noStroke();
      fill(noise(i*0.01+dx,j*0.01,dx)*255);
      rect(i,j,10,10);
    }
  }
}
