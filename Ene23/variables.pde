// uso de variables: repetir el mismo dato, si el dato es resultado de un procedimiento
float tamano;
int posicionHorizonal;
int posicionVert;
tamano = random(20,100);
posicionHorizonal = ceil(random(0,300));
posicionVert = ceil(random(0,300));
size(400,400);
ellipseMode(CORNER);
fill(random(255),random(255),random(255));
ellipse(posicionHorizonal,posicionVert,tamano,tamano);
fill(random(255),random(255),random(255));
rect(posicionHorizonal,posicionVert+tamano,tamano,tamano);
