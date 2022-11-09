class Botones {
  //PROPIEDADES(VARIABLES)
  int posX, posY, ancho, alto, accion, proximidad;
  String textoBoton;

  //CONSTRUCTOR( setup)
  Botones(int _posX, int _posY, int _ancho, int _alto) {
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto;
  }

  //METODOS (funciones);
  void dibujarBoton(int _accion, int _proximidad, String _texto) {
    accion = _accion;
    proximidad = _proximidad;
    textoBoton = _texto;
    noStroke();
    fill(127, 50);
    rect(posX, posY, ancho, alto);
    textSize(30);
    fill(#B4912E);
    text(textoBoton, posX+10, posY+35);
  }  

  boolean botonPresionado(int _posX, int _posY, int _ancho, int _alto) {
    posX = _posX;
    posY = _posY;
    ancho = _ancho;
    alto = _alto;
    boolean presionoBoton = mouseX > posX && mouseX < posX+ancho && mouseY > posY && mouseY < posY + alto == true;
    return presionoBoton;
  }
}
