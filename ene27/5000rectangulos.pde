void setup(){
size(400,400);
}

void draw(){

  background(255);
  for(int i= 0; i<5000; i+=10){
    fill(random(255));
    noStroke();
    rect(random(400),random(400),random(100),random(100));
    
  }
}
