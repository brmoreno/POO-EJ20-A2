let sujetos = [];

function setup() {
	createCanvas(windowWidth, windowHeight);
	background(255);
	for(let i=0; i<200; i++){
		sujetos.push(new Sujeto(random(width),random(height),10));
	}
	sujetos[0].estado = 1;
}

function draw() {
	background(255);
	for(let i = 0; i<sujetos.length;i++){
		sujetos[i].display();
		sujetos[i].update();
		sujetos[i].bordes();
		for(let j = i+1; j<sujetos.length; j++){
			sujetos[i].conOtro(sujetos[j]);
		}
	}
}

class Sujeto{
	constructor(x_, y_, r_){
		//0 = sano, 1 = enfermo, 2 = recuperado
		this.estado = 0;
		this.posicion = createVector(x_,y_);
		this.velocidad = p5.Vector.random2D();
		this.radio = r_;
		this.contador = 0;
	}
	
	display(){
		switch(this.estado){
			case 0:
				fill(0,0,255);
			break;
			case 1:
				fill(255,0,0);
			break;
			case 2:
				fill(0,255,0);
			break;
		}
		noStroke();
		ellipse(this.posicion.x,this.posicion.y,this.radio*2, this.radio*2);
	}
	
	update(){
		this.posicion.add(this.velocidad);
		if(this.estado == 1){
			this.contador++;
		}
		if(this.contador>400){
			this.estado = 2;
			 }
	}
	
	bordes(){
	if(this.posicion.x<this.radio){
		this.posicion.x = this.radio;
		this.velocidad.x *= -1;
	}
	if(this.posicion.x>width-this.radio){
		this.posicion.x = width-this.radio;
		this.velocidad.x *= -1;
	}
	if(this.posicion.y<this.radio){
		this.posicion.y = this.radio;
		this.velocidad.y *= -1;
	}
	if(this.posicion.y>height-this.radio){
		this.posicion.y = height-this.radio;
		this.velocidad.y *= -1;
	}
}
	
	conOtro(otro_){
		let vectorDistancia = p5.Vector.sub(otro_.posicion, this.posicion);
		let magnitudVectorDistancia = vectorDistancia.mag();
		let distanciaColision = this.radio + otro_.radio;
		if(magnitudVectorDistancia<distanciaColision){
			if( this.estado == 1 && otro_.estado == 0){
				otro_.estado = 1;
			}
			if(this.estado == 0 && otro_.estado == 1){
				this.estado = 1;
			}
			let correcionDistancia = (distanciaColision - magnitudVectorDistancia)*0.5
			let  d = vectorDistancia.copy();
			let vectorCorreccion = d.normalize().mult(correcionDistancia);
			otro_.posicion.add(vectorCorreccion);
			this.posicion.sub(vectorCorreccion);
			let anguloColision =  vectorDistancia.heading();
			let rotados = [new p5.Vector(),new p5.Vector()];
			let alternados = [new p5.Vector(),new p5.Vector()];
			let finales = [new p5.Vector(),new p5.Vector()];
			
			rotados[0] = this.velocidad.copy().rotate(-anguloColision);
			rotados[1] = otro_.velocidad.copy().rotate(-anguloColision);
			alternados[0].x = rotados[1].x;
			alternados[0].y = rotados[0].y;
			alternados[1].x = rotados[0].x;
			alternados[1].y = rotados[1].y;
			finales[0] = alternados[0].copy().rotate(anguloColision);
			finales[1] = alternados[1].copy().rotate(anguloColision);
			this.velocidad = finales[0].normalize();
			otro_.velocidad = finales[1].normalize();
			
		}
	}	
}
