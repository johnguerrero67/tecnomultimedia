class Pantalla {
  Mario mario;
  Hongo hongo;
  Enemigo enemigo;
  PImage img;
  int posX, posY;

  Pantalla () {
    img = loadImage ("pantallaMario.jpg");
    mario = new Mario (width/2, 339);
    hongo = new Hongo (width/2, 200);
    enemigo = new Enemigo (150, 339);
  }

  void display () {
    image (img, 0, 0, width, height);
    mario.display();
    mario.move ();
    hongo.display();
    hongo.move ();
    enemigo.move ();
    enemigo.display ();
  }
}
