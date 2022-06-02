int posX;
int posY;
int tam;

void setup () {
  size (500, 500);
  background (200);
  strokeWeight (4);
  posX = width/2;
  posY = height/2;
  tam = 50;
}

void draw () {
  for (int i=0; i<width*2; i=i+10) {
    line (i, 0, 0, i);
  }
  apareceEllipse();
}

void mouseClicked () {
  
}
