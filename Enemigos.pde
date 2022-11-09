class Enemigos {
  //PROPIEDADES(VARIABLES)
  float posX, posY, ancho, alto;
  PImage monstruo;
  //CONSTRUCTOR( setup)
  Enemigos() {
    monstruo = loadImage("monstruo.png");
    ancho = 63;
    alto = 145;
    ubicacionRandom();
  }

  //METODOS (funciones);
  //Dibujo enemigo
  void dibujarMonstruo() {
    image(monstruo, posX, posY, ancho, alto);
    stroke(0);
    noFill();
  }

  //metodo para evaluar colision
  boolean colision(float posX, float posY, float ancho, float alto) {
    if ( mouseX > posX-ancho/2 && mouseX < posX+ancho 
      && mouseY > posY-alto/2 && mouseY < posY+alto/2) {
      println("Colision");
      return true;
    } else { 
      println("false");
      return false;
    }
  }
  
  void ubicacionRandom() {
    posX = random(0, width-100);
    posY = 230;
  }
}
