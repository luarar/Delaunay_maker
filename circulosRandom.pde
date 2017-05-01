void circulosRandom(){
  
  colorPaleta=miPaleta.devolverColor();
  fill(colorPaleta) ;
  noStroke();
  float diametro = pitch;

  arc (250, ((height/3)*(random(1.1,2.1))),diametro, diametro,PI*0.5, PI*1.5);
  arc (250, ((height/3)*(random(1.1,2.1))),diametro, diametro, PI*1.5, PI* 2.5);

  colorPaleta2=miPaleta.devolverColor();
  fill(colorPaleta2) ;
  arc (250, ((height/3)),diametro, diametro, PI*1.5, PI* 2.5);
  arc (250, ((height/3)*(random(1.1,2.1))),diametro, diametro,PI*0.5, PI*1.5); 
  
  colorPaleta3=miPaleta.devolverColor();
  fill(colorPaleta3) ;
  arc (250, ((height/3)*(random(1.1,2.1))),diametro, diametro, PI*1.5, PI* 2.5);
  arc (250, ((height/3)*(random(1.1,2.1))),diametro, diametro,PI*0.5, PI*1.5);


}