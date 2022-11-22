class Juego {
  //PROPIEDADES(VARIABLES)
  Mira mira;
  BotonesJuego boton1, boton2;
  Tiempo tiempo;
  Enemigos[] monstruo;
  int pantalla;
  PImage inicio, escenario;
  PFont tipografia;
  int cantMonstruos;
  int contador = 0;

  //CONSTRUCTOR( setup)
  Juego() {
    pantalla = 0;
    tipografia = loadFont("Future_Rot-80.vlw");
    inicio = loadImage("inicio.jpg");
    escenario = loadImage("escenario.jpg");
    cantMonstruos = 3;
    monstruo = new Enemigos[cantMonstruos];
    for ( int i = 0; i < cantMonstruos; i++) {
      monstruo[i] = new Enemigos();
    }
    mira = new Mira();
    boton1 = new BotonesJuego(210, 350, 340, 50);
    boton2 = new BotonesJuego(210, 350, 300, 50);
    tiempo = new Tiempo();
  }

  //METODOS (funciones);
  //dibuja
  void draw_() {
    //Logica de estados
    if (pantalla == 0) {
      image(inicio, 0, 0);
      texto("Acaba con los monstruos antes de escapar", tipografia, 20, color(200), width/4, height/4);
      boton1.dibujarBoton(0, 1, "Comenzar partida");
    } else if (pantalla == 1) {
      image(escenario, 0, 0);
      for ( int i = 0; i < cantMonstruos; i++) {
        monstruo[i].dibujarMonstruo();
        //noCursor();
        if ( monstruo[i].colision(monstruo[i].posX, monstruo[i].posY, monstruo[i].ancho, monstruo[i].alto) && (mousePressed)) {//COLISION""
          monstruo[i].ubicacionRandom();

          contador++;
          println("Colision:" + contador);
        }
      }
      mira.dibujar();
      mira.puntero();
      tiempo.barra();
      texto("puntos:" + contador, tipografia, 20, color(230), 20, 50);
    } else if (pantalla == 2) {
      background(0);
      texto("Felicidades! \nlograste sobrevivir a los monstruos \nahora podes escapar", tipografia, 25, color(200), width/4, height/4);
      boton2.dibujarBoton(2, 0, "Pulsa bara espaciadora \n\n para volver al menu");
      tiempo.posX = 800;
    }
    if (contador == 20) {
      contador = 0;
      pantalla = 2;
    }
  }
  //detecta boton
  void presionoMouse() {
    if (boton1.botonPresionado(210, 350, 340, 50) && pantalla == boton1.accion ) {
      pantalla = boton1.proximidad;
    }
    if (boton2.botonPresionado(210, 350, 300, 50) && pantalla == boton2.accion ) {
      pantalla = boton2.proximidad;
    }
  }

  void texto(String _texto, PFont fuente, int tamanoTexto, color colores, float posX, float posY) {
    pushStyle();
    textFont(fuente);
    textSize(tamanoTexto);
    fill(colores);
    text(_texto, posX, posY);
    popStyle();
  }
}//cierra clase
