void tablaResultados() {
  for (int i=2; i<=tamSerpiente; i++) {
    //la cabea de la serpiente toca su propio cuerpo
    if (cabezaX[1]==cabezaX[i] && cabezaY[1]==cabezaY[i]) {
      fill(255);
      rect(125, 125, 160, 100);
      fill(0);
      text("GAME OVER", 200, 150);
      text("Puntaje:  "+str(tamSerpiente-1)+" unidades", 200, 175);
      text("SHIFT para resetear.", 200, 200);
      stopgame=true;
    }
    //la cabeza de la serpiente toca el borde de la pantalla
    if (cabezaX[1]>=(width-8) || cabezaY[1]>=(height-8) || cabezaX[1]<=0 || cabezaY[1]<=0) {
      fill(255);
      rect(125, 125, 160, 100);
      fill(0);
      text("GAME OVER", 200, 150);
      text("Puntaje:  "+str(tamSerpiente-1)+" unidades", 200, 175);
      text("SHIFT para resetear.", 200, 200);
      stopgame=true;
    }
  }
}
