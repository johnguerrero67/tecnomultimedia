void mover() {
  for (int i=tamSerpiente; i>0; i--) {
    if (i!=1) {
      //regresa todas las coordenadas de vuelta a un arreglo
      cabezaX[i]=cabezaX[i-1];
      cabezaY[i]=cabezaY[i-1];
    } else {
      //mueve el nuevo punto para la cabeza de la serpiente, el cual es
      // siempre cabezaX[1] y cabezaY [1].
      switch(angulo) {
      case 0:
        cabezaX[1]+=8;
        break;
      case 90:
        cabezaY[1]-=8;
        break;
      case 180:
        cabezaX[1]-=8;
        break;
      case 270:
        cabezaY[1]+=8;
        break;
      }
    }
  }
}
