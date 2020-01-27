void setup(){
size(400,400);
}

void draw(){

  background(255);
  for(int i= 0; i<400; i+=10){
    
    //rectangulos y fill
    fill(i);
    rect(i,200,10,10);
    
  }
}
