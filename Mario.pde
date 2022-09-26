class Mario {
  int posX, posY;
  PImage [] mario = new PImage [1];

  Mario (int _posX, int _posY) {
    posX= _posX;
    posY= _posY;
    mario [0] = loadImage ("Mario.png");
  }

  void move () {
    teclaPresionada();
  }

  void display () {
    image (mario [0], posX, posY);
  }

  void teclaPresionada () {
    if (keyPressed == true) {
      if (keyCode == RIGHT) {
        posX ++;
      } else { 
        if (keyCode == LEFT) {
          posX --;
        } else { 
          if (keyCode == UP) {
            posY --;
          } else { 
            if (keyCode == DOWN) {
              posY ++;
            }
          }
        }
      }
    }
  }
}
