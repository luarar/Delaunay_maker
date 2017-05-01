//  variables globales ------------------------------------


import oscP5.*; // -->se importan las librerías oscP5 y netP5
import netP5.*;

OscP5 oscP5; //--> definición del objeto

int puerto; //--> Se define un puerto de entrada para la comunicación osc

float pitch; //--> varialbe para la altura
float amp; //--> varialbe para la amplitud
float diametro;

Paleta miPaleta;
color colorPaleta;
color colorPaleta2;
color colorPaleta3;
color colorPaleta4;

float grados = 1;


//  ____________________________________________


void setup() {
  size(500, 500);
  miPaleta=new Paleta("imagen_5.jpg");
  background(215);
  frameRate(2);
  grados = random(2);
   puerto = 4000; // elegimos el puerto, que debe ser el mismo del servidor
  oscP5 = new OscP5(this, puerto); // Entrada: mensajes de entrada por el puerto especificado
}

  
// settings de oscp5 ___________________________________________

void oscEvent(OscMessage theOscMessage) {
  if(theOscMessage.checkAddrPattern("/pitch")==true) { // si la dirección es "pitch"
    if(theOscMessage.checkTypetag("f")) {              // si el dato que trae el mensaje es un float
      println("ENTRO PITCH");            
      pitch = theOscMessage.get(0).floatValue();       // extraemos el primer dato (0) y se lo asignamos al pitch
  //    posY = int (map (pitch, 40, 70, height, 0));    // con el pitch definimos la posición y del círculo
     pitch = map(pitch, 50, 70, 1, 300);
     pitch = constrain(pitch, 0, 400); 
      println("pitch: "+ pitch);
      return;
    }
  }

  if(theOscMessage.checkAddrPattern("/amp")==true) {
    if(theOscMessage.checkTypetag("f")) {
      amp = theOscMessage.get(0).floatValue();
      diametro = int (map (amp, 40, 70, 0, 200));
      println("amp: "+ amp);
      return;
    }
  }
}

//_____________________________________________


void draw() {
  if (grados < 1) {
  rotate(PI/6);}
  

 // float diametro = random(60, 200);
 
 if ( pitch < 100 ) {

   circulosPequenios();
 }
 if ((pitch > 200) && (pitch < 300) ) {
  circulosGrandes();}
  
  if (pitch > 300) {
  circulosRandom(); }
}