import shiffman.box2d.*; 
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing mundo;
ArrayList <Caja> cajas;
Limite suelo;
PImage gato;

void setup(){
  size(400,400);
  mundo = new Box2DProcessing(this);
  mundo.createWorld();
  cajas = new ArrayList <Caja>();
  suelo = new Limite(200,380,400,20);
  gato = loadImage("gato.jpg");
}

void draw(){
  background(255);
  mundo.step();
  for(Caja c:cajas){
    c.display();
  }
  suelo.display();
}

void mousePressed(){
  cajas.add(new Caja(mouseX, mouseY, 90,40));
}
