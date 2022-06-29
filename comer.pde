void comer() {
  //la cabeza de la serpiente come la manzana
  if (cabezaX[1]==manzanaX && cabezaY[1]==manzanaY) {
    //reubica la manzana en algún lado lejos de la serpiente
    tamSerpiente+=round(random(3)+1);
    redo=true;
    while (redo) {
      manzanaX=(round(random(47))+1)*8;
      manzanaY=(round(random(47))+1)*8;
      for (int i=1; i<tamSerpiente; i++) {
        if (manzanaX==cabezaX[i] && manzanaY==cabezaY[i]) {
          redo=true;
        } else {
          redo=false;
          i=1000;
        }
      }
    }
  }
  //dibuja la nueva cabeza de la serpiente
  fill(0);
  rect(cabezaX[1], cabezaY[1], 8, 8);
  //luego borra el final de la serpiente
  fill(255);
  rect(cabezaX[tamSerpiente], cabezaY[tamSerpiente], 8, 8);
}
