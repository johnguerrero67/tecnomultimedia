class Hongo {
  int posX, posY;
  float velocidad;
  int direccion;
  float radio;
  PImage [] hongo = new PImage [1];

  Hongo (int _posX, int _posY) {
    posX= _posX;
    posY= _posY;
    velocidad = 2.0;
    direccion = 1;
    radio = 52.0;
    hongo [0] = loadImage ("Hongo.png");
  }

  void move () {
    posX += velocidad * direccion;
    if ((posX > 450 - radio) || (posX < 270 - radio)) {
      direccion = -direccion;
    }
  }

  void display () {
    image (hongo [0], posX, posY);
  }
}
