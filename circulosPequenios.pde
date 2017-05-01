void circulosPequenios(){
  
  float posicionCirculoPequenio = (height/3);
  float diametro = pitch;

    fill(255) ;
    arc (250, posicionCirculoPequenio ,diametro, diametro,PI*0.5, PI*1.5);
    arc (250, (posicionCirculoPequenio + diametro) ,diametro, diametro,PI*1.5, PI*2.5);
    arc (250, (posicionCirculoPequenio + (2*diametro)) ,diametro, diametro,PI*0.5, PI*1.5);
    fill(0);
    arc (250, posicionCirculoPequenio ,diametro, diametro,PI*1.5, PI*2.5);
    arc (250, (posicionCirculoPequenio + diametro) ,diametro, diametro,PI*0.5, PI*1.5);
    arc (250, (posicionCirculoPequenio + (2*diametro)) ,diametro, diametro,PI*1.5, PI*2.5);

}