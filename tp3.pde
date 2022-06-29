int angulo=0;
int tamSerpiente=5;
int tiempo=0;
int[] cabezaX= new int[2500];
int[] cabezaY= new int[2500];
int manzanaX=(round(random(47))+1)*8;
int manzanaY=(round(random(47))+1)*8;
boolean redo=true;
boolean stopgame=false;

void setup() {
  restart();
  size(400, 400);
  textAlign(CENTER);
}

void draw() {
  if (stopgame) {
    //no hace nada por el game over (detiene la jugada)
  } else {
    //dibuja  los parámetros principales
    tiempo+=1;
    fill(255, 0, 0);
    stroke(0);
    rect(manzanaX, manzanaY, 8, 8);
    fill(0);
    stroke(0);
    rect(0, 0, width, 8);
    rect(0, height-8, width, 8);
    rect(0, 0, 8, height);
    rect(width-8, 0, 8, height);
    //tiempo modulado por 5, se crean frames artificiales cada 5 frames
    //de otra forma el juego iría muy rápido
    if ((tiempo % 5)==0) {
      mover();
      comer();
      tablaResultados();
    }
  }
}
//controles:
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP && angulo!=270 && (cabezaY[1]-8)!=cabezaY[2]) {
      angulo=90;
    }
    if (keyCode == DOWN && angulo!=90 && (cabezaY[1]+8)!=cabezaY[2]) {
      angulo=270;
    }
    if (keyCode == LEFT && angulo!=0 && (cabezaX[1]-8)!=cabezaX[2]) {
      angulo=180;
    }
    if (keyCode == RIGHT && angulo!=180 && (cabezaX[1]+8)!=cabezaX[2]) {
      angulo=0;
    }
    if (keyCode == SHIFT) {
      //resetea el juego presionando SHIFT
      restart();
    }
  }
}
