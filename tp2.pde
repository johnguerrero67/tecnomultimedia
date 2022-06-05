//https://youtu.be/ovrZwrlK2pw

void setup () {
  size (500, 500);
  background (200);
  strokeWeight (4);
}

void draw () {
  for (int i=0; i<width*2; i=i+10) {
    line (i, 0, 0, i);
  }
}

void keyPressed () {
  if (key=='s'||key=='S') {
    apareceEllipse ();
  } else if (key==ENTER) {
    reset ();
  }
}
