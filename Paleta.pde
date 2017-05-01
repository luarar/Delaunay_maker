class Paleta {
  PImage imagenPaleta;

  Paleta( String nombreImagen) {
    imagenPaleta=loadImage(nombreImagen);
  }

  void mostrar() {
    image(imagenPaleta, 0, 0);
  }
  color devolverColor() {

    int cualx=int(random(imagenPaleta.width));
    int cualy=int(random(imagenPaleta.height));
    color colorDelPixel = imagenPaleta.get( cualx, cualy );
    return colorDelPixel;
  }
}