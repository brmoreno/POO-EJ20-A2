Para realizar la práctica 3 necesitas leer los ejemplos incluidos en la biblioteca Box2D:
- ApplyForceSimpleWind
- Boxes
- BridgeExample

Ubica las clases provenientes de la biblioteca Box2D, los métodos y  atributos invocados en los objetos y realiza un ejercicio de ingeniería inversa (https://en.wikipedia.org/wiki/Reverse_engineering) donde generes en papel el diseño de la biblioteca box2D a partir de los componentes utilizados en estos sketches; es decir, construye las clases, incluyes sus atributos y sus métodos.

Por ejemplo, el leer en la linea 14 del ejemplo Boxes, vemos que existe una clase Box2DProcessing, por lo tanto declaro


class Box2DProcessing{

}

Luego, en la linea 27 vemos que se invoca el método createWorld() por lo tanto,  lo incluyo en el diseño de mi clase

class Box2DProcessing{

	void createWorld(){
  
	}
  
}

y así para cada clase, método y atributo que identifiques en los 3 sketchs.

No es necesario que desarrolles la forma en que se resuelven los métodos, simplemente que los identifiques  e incluyas en la clase correspondiente.
Se entrega en papel la clase del 2 de Marzo de 2020, por pareja.
