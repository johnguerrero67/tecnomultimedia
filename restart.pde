void restart() {
  //presionando SHIFT, todas las variables se resetean a sus valores iniciales
  background(255);
  cabezaX[1]=200;
  cabezaY[1]=200;
  for (int i=2; i<1000; i++) {
    cabezaX[i]=0;
    cabezaY[i]=0;
  }
  stopgame=false;
  manzanaX=(round(random(47))+1)*8;
  manzanaY=(round(random(47))+1)*8;
  tamSerpiente=5;
  tiempo=0;
  angulo=0;
  redo=true;
}
