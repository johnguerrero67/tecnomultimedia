Pantalla pantalla;

void setup () {
  size (600, 400);
  pantalla = new Pantalla ();
}

void draw() {
  background (200);
  pantalla.display();
}
