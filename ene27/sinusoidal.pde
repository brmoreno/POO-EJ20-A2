float dx;
void setup(){
size(400,400);
}

void draw(){
  dx+=0.1;
  background(255);
  for(int i= 0; i<400; i+=1){
    ellipse(i,200+sin(i*0.1+dx)*50,1,1);
  }
}
