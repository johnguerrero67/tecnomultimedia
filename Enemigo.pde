class Enemigo {
  int posX, posY;
  float velocidad;
  int direccion;
  float radio;
  PImage [] enemigo = new PImage [1];

  Enemigo (int _posX, int _posY) {
    posX= _posX;
    posY= _posY;
    velocidad = 2.0;
    direccion = 1;
    radio = 52.0;
    enemigo [0] = loadImage ("Enemigo.png");
  }

  void move () {
    posX += velocidad * direccion;
    if ((posX > 300 - radio) || (posX < 200 - radio)) {
      direccion = -direccion;
    }
  }

  void display () {
    image (enemigo [0], posX, posY);
  }
}
