class Tiempo {
  //PROPIEDADES(VARIABLES)
  color a = color(255, 0, 0);
  color b = color(0, 255, 0);
  int tiempo;
  int minutos;
  float posX = 0;
  //CONSTRUCTOR( setup)
  Tiempo() {

    tiempo = 15*5000;
    minutos = millis();
    posX = width;
  }
  //METODOS (funciones);

  void barra() {    
    noStroke();
    if (minutos < tiempo) {
      posX -= 0.3;
    }
    float c = map(posX, 0, width, 0, 1);
    color cambio = lerpColor(a, b, c);
    stroke(0);
    fill(cambio);
    rect(0, 0, posX, 20);
  }
}
