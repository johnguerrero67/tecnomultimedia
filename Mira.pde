class Mira {
  //PROPIEDADES(VARIABLES)
  float posX, posY, ancho, alto;
  PImage arma, arma2, puntero;
  //CONSTRUCTOR( setup)
  Mira() {
    posX = mouseX-15;
    posY = 250;
    ancho = 28;
    alto = 28;
    arma = loadImage("arma.png");
    arma2 = loadImage("arma2.png");
    puntero = loadImage("puntero.png");
  }

  //METODOS (funciones);

  void dibujar() {
    //la imagen cambia dependiendo de la ubicación del mouse
    if (mouseX < width/2) {
      image(arma, 220, 330);
    } else if (mouseX > width/2) {
      image(arma2, 270, 330);
    }
  } 
  //puntero
  void puntero() {
    //rectMode(CENTER);
    fill(50, 230, 0);
    //rect(posx, posy, ancho, alto);
    image(puntero, mouseX-15, posY, ancho, alto);
    //p.resize(0, 30);
  }
}
