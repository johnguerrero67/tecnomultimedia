void apareceEllipse() {
  if (mouseX >= posX && mouseY >= posY) {
    fill (150, 50);
    noStroke();
    ellipse (width/2, height/2, tam, tam);
    //noLoop();
  } else if (keyPressed) {
    random (tam++);
  }
}

void inicializarVariables() {
  variable1 =100;
}
