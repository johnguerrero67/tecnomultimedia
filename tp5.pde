Juego juego;

void setup() {
  size(800, 450);
  //inicializo la clase juego
  juego = new Juego();
 
}
void draw() {
  //llamo a los métodos de la clase Juego
  juego.draw_();
  
}
void mousePressed() {
  juego.presionoMouse();
}
