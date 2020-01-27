
void setup(){
size(400,400);
}

void draw(){
  background(255);
  for(int i= 0; i<400; i+=10){
    //circulos concentricos
    noFill();
    ellipse(200,200,i,i);
  }
}
