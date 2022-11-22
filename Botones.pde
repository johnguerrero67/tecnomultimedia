class Botones {
  PFont calibri; 
  Botones () {
    calibri = loadFont ("CalibriNewPS-BoldMT-18.vlw");
  }
  void botonRect(float posX, float posY, float tamX, float tamY) {
    if ( mouseX > posX && mouseX < posX + tamX && mouseY > posY && mouseY < posY + tamY) {
      noStroke();
      fill(127, 50);
      rect(posX, posY, tamX, tamY);
    }
  }
  boolean botonPressed(int mx, int my, int px, int py, int ancho, int alto) {
    boolean press = mx>px && mx<px+ancho && my>py&&my<py+alto == true;
    return press;
  }
}
