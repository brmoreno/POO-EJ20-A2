float colorRelleno[] = new float[500];
float x[] = new float[500];
float y[] = new float[500];
float w[]  = new float[500];
float h[] = new float[500];
float dx[] = new float[500];
float dy[] = new float[500];


void setup(){
size(400,400);
  for(int i = 0; i<500; i++){
    colorRelleno[i] = random(255);
    x[i] = random(400);
    y[i] = random(400);
    w[i] = random(100);
    h[i] = random(100);
    dx[i] = random(-1,1);
    dy[i] = random(-1,1);
  }
}

void draw(){
  background(255);
  
  for(int i= 0; i<500; i+=1){
    noStroke();
    fill(colorRelleno[i]);
    x[i]+=dx[i];
    y[i]+=dy[i];
    rect(x[i],y[i],w[i],h[i]);
  }
}
