class Aventura {
  Botones botones;
  Juego juego;
  BotonesJuego botonesJuego;
  PImage inicio, opciones, instrucciones, creditos;
  PImage [] acto1 = new PImage[14];
  PImage [] acto2 = new PImage [15];
  PImage [] acto3 = new PImage [53];
  int pantalla;

  Aventura () {
    botones = new Botones();
    juego = new Juego();
    botonesJuego = new BotonesJuego(1,1,1,1);
    pantalla = 0;
    inicio = loadImage("menu.png");
    opciones = loadImage("opciones.png");
    instrucciones = loadImage ("instrucciones.png");
    creditos = loadImage("creditos.png");
    for (int i = 0; i < acto1.length; i++) {
      acto1[i] = loadImage("actoA" + i + ".png");
    }
    for (int i = 0; i < acto2.length; i++) {
      acto2[i] = loadImage("actoB" + i + ".png");
    }
    for (int i = 0; i < acto3.length; i++) {
      acto3[i] = loadImage("actoC" + i + ".png");
    }
  }
  void draw () {
    if (pantalla == 0) {
      image(inicio, 0, 0);
      botones.botonRect(60, 188, 125, 30); //comenzar
      botones.botonRect(60, 226, 125, 30); //opciones
      botones.botonRect(60, 262, 157, 30); //instrucciones
      botones.botonRect(60, 300, 110, 30); //creditos
    } else if (pantalla == 1) {
      background(0);
      image(acto1[0], 0, 0);
    } else if (pantalla == 2) {
      background(0);
      image(acto1[1], 0, 0);
    } else if (pantalla == 3) {
      background(0);
      image(acto1[2], 0, 0);
    } else if (pantalla == 4) {
      background(0);
      image(acto1[3], 0, 0);
    } else if (pantalla == 5) {
      background(0);
      image(acto1[4], 0, 0);
      botones.botonRect(40, 402, 165, 30);//cerrar puerta con llave
      botones.botonRect(600, 402, 180, 30);//investigar afuera de su casa
    } else if (pantalla == 6) {
      background(0);
      image(acto1[5], 0, 0);
    } else if (pantalla == 7) {
      background(0);
      image(acto1[6], 0, 0);
    } else if (pantalla == 8) {
      background(0);
      image(acto1[7], 0, 0);
      botones.botonRect(110, 402, 117, 30);//ir por suministros
      botones.botonRect(565, 402, 80, 30);//ir a vestirse
    } else if (pantalla == 9) {
      background(0);
      image(acto1[8], 0, 0);
    } else if (pantalla == 10) {
      background(0);
      image(acto1[9], 0, 0);
    } else if (pantalla == 11) {
      background(0);
      image(acto1[10], 0, 0);
    } else if (pantalla == 12) {
      background(0);
      image(acto1[11], 0, 0);
      botones.botonRect(93, 405, 190, 30);//correr en direccion a la ciudad
      botones.botonRect(600, 405, 105, 30);//entrar a su casa
    } else if (pantalla == 13) {
      background(0);
      image(acto1[12], 0, 0);
    } else if (pantalla == 14) {
      background(0);
      image(acto1[13], 0, 0);
    } else if (pantalla == 15) {
      background(0);
      image(acto2[0], 0, 0);
    } else if (pantalla == 16) {
      background(0);
      image(acto2[1], 0, 0);
    } else if (pantalla == 17) {
      background(0);
      image(acto2[2], 0, 0);
      botones.botonRect(40, 395, 250, 30);//ignorar el sonido y dirigirse al mercado
      botones.botonRect(610, 395, 160, 30);//ir hacia los columpios
    } else if (pantalla == 18) {
      background(0);
      image(acto2[3], 0, 0);
    } else if (pantalla == 19) {
      background(0);
      image(acto2[4], 0, 0);
    } else if (pantalla == 20) {
      background(0);
      image(acto2[5], 0, 0);
    } else if (pantalla == 21) {
      background(0);
      image(acto2[6], 0, 0);
    } else if (pantalla == 22) {
      background(0);
      image(acto2[7], 0, 0);
    } else if (pantalla == 23) {
      background(0);
      image(acto2[8], 0, 0);
    } else if (pantalla == 24) {
      background(0);
      image(acto2[9], 0, 0); 
      botones.botonRect(40, 400, 180, 30);//esconderse sigilosamente
      botones.botonRect(705, 400, 50, 30);//correr
    } else if (pantalla == 25) {
      background(0);
      image(acto2[10], 0, 0);
      botones.botonRect(100, 400, 120, 30);//arrojar una piedra
      botones.botonRect(650, 405, 50, 30);//correr
    } else if (pantalla == 26) {
      background(0);
      image(acto2[11], 0, 0);
    } else if (pantalla == 27) {
      background(0);
      image(acto2[12], 0, 0);
    } else if (pantalla == 28) {
      background(0);
      image(acto2[13], 0, 0);
    } else if (pantalla == 29) {
      background(0);
      image(acto2[14], 0, 0);
    } else if (pantalla == 30) {
      background(0);
      image(acto3[0], 0, 0);
    } else if (pantalla == 31) {
      background(0);
      image(acto3[1], 0, 0);
    } else if (pantalla == 32) {
      background(0);
      image(acto3[2], 0, 0);
      botones.botonRect(50, 402, 130, 30);//entrar en el callejón
      botones.botonRect(590, 402, 160, 30);//doblar hacia la avenida
    } else if (pantalla == 33) {
      background(0);
      image(acto3[3], 0, 0);
      botones.botonRect(35, 390, 190, 30);//buscar una venta abierta
      botones.botonRect(590, 390, 172, 50);//destrabar las escaleras de emergencia y subir
    } else if (pantalla == 34) {
      background(0);
      image(acto3[4], 0, 0);
    } else if (pantalla == 35) {
      background(0);
      image(acto3[5], 0, 0);
    } else if (pantalla == 36) {
      background(0);
      image(acto3[6], 0, 0);
    } else if (pantalla == 37) {
      background(0);
      image(acto3[7], 0, 0);
    } else if (pantalla == 38) {
      background(0);
      image(acto3[8], 0, 0);
    } else if (pantalla == 39) {
      background(0);
      image(acto3[9], 0, 0);
    } else if (pantalla == 40) {
      background(0);
      image(acto3[10], 0, 0);
    } else if (pantalla == 41) {
      background(0);
      image(acto3[11], 0, 0);
    } else if (pantalla == 42) {
      background(0);
      image(acto3[12], 0, 0);
    } else if (pantalla == 43) {
      background(0);
      image(acto3[13], 0, 0);
    } else if (pantalla == 44) {
      background(0);
      image(acto3[14], 0, 0);
    } else if (pantalla == 45) {
      background(0);
      image(acto3[15], 0, 0);
    } else if (pantalla == 46) {
      background(0);
      image(acto3[16], 0, 0);
    } else if (pantalla == 47) {
      background(0);
      image(acto3[17], 0, 0);
    } else if (pantalla == 48) {
      background(0);
      image(acto3[18], 0, 0);
    } else if (pantalla == 49) {
      background(0);
      image(acto3[19], 0, 0);
    } else if (pantalla == 50) {
      background(0);
      image(acto3[20], 0, 0);
    } else if (pantalla == 51) {
      background(0);
      image(acto3[21], 0, 0);
    } else if (pantalla == 52) {
      background(0);
      image(acto3[22], 0, 0);
    } else if (pantalla == 53) {
      background(0);
      image(acto3[23], 0, 0);
    } else if (pantalla == 54) {
      background(0);
      image(acto3[24], 0, 0);
    } else if (pantalla == 55) {
      background(0);
      image(acto3[25], 0, 0);
      botones.botonRect(50, 402, 140, 30);//darles de comer
      botones.botonRect(680, 400, 50, 30);//correr
    } else if (pantalla == 56) {
      background(0);
      image(acto3[26], 0, 0);
    } else if (pantalla == 57) {
      background(0);
      image(acto3[27], 0, 0);
    } else if (pantalla == 58) {
      background(0);
      image(acto3[28], 0, 0);
    } else if (pantalla == 59) {
      background(0);
      image(acto3[29], 0, 0);
    } else if (pantalla == 60) {
      background(0);
      image(acto3[30], 0, 0);
    } else if (pantalla == 61) {
      background(0);
      image(acto3[31], 0, 0);
    } else if (pantalla == 62) {
      background(0);
      image(acto3[32], 0, 0);
    } else if (pantalla == 63) {
      background(0);
      image(acto3[33], 0, 0);
    } else if (pantalla == 64) {
      background(0);
      image(acto3[34], 0, 0);
    } else if (pantalla == 65) {
      background(0);
      image(acto3[35], 0, 0);
    } else if (pantalla == 66) {
      background(0);
      image(acto3[36], 0, 0);
    } else if (pantalla == 67) {
      background(0);
      image(acto3[37], 0, 0);
    } else if (pantalla == 68) {
      background(0);
      image(acto3[38], 0, 0);
    } else if (pantalla == 69) {
      background(0);
      image(acto3[39], 0, 0);
      botones.botonRect(35, 410, 180, 30);//seguir las luces del bosque
      botones.botonRect(270, 410, 190, 30);//seguir caminando por la ruta
      botones.botonRect(548, 410, 190, 30);//comer junto a los monstruos
    } else if (pantalla == 70) {
      background(0);
      image(acto3[40], 0, 0);
    } else if (pantalla == 71) {
      background(0);
      image(acto3[41], 0, 0);
    } else if (pantalla == 72) {
      background(0);
      image(acto3[42], 0, 0);
    } else if (pantalla == 73) {
      background(0);
      image(acto3[43], 0, 0);
    } else if (pantalla == 74) {
      background(0);
      image(acto3[44], 0, 0);
    } else if (pantalla == 75) {
      background(0);
      image(acto3[45], 0, 0);
    } else if (pantalla == 76) {
      background(0);
      image(acto3[46], 0, 0);
    } else if (pantalla == 77) {
      background(0);
      image(acto3[47], 0, 0);
    } else if (pantalla == 78) {
      background(0);
      image(acto3[48], 0, 0);
    } else if (pantalla == 79) {
      background(0);
      image(acto3[49], 0, 0);
    } else if (pantalla == 80) {
      background(0);
      image(acto3[50], 0, 0);
    } else if (pantalla == 81) {
      background(0);
      image(acto3[51], 0, 0);
    } else if (pantalla == 82) {
      background(0);
      image(acto3[52], 0, 0);
    } else if (pantalla == 83) {
      background(0);
      image(opciones, 0, 0);
    } else if (pantalla == 84) {
      background(0);
      image(instrucciones, 0, 0);
    } else if (pantalla == 85) {
      background(0);
      image(creditos, 0, 0);
    } else if (pantalla == 86) {
    juego. draw_();
    juego.presionoMouse();
    }
  }

  void mousePressed() {
    if (pantalla == 0 && botones.botonPressed(mouseX, mouseY, 60, 188, 125, 30)) {
      pantalla = 1;
      println( "Start");
    } else if (pantalla == 0 && botones.botonPressed(mouseX, mouseY, 60, 226, 125, 30)) { 
      pantalla = 83;
      println( "Opciones");
    } else if (pantalla == 0 && botones.botonPressed(mouseX, mouseY, 60, 262, 157, 30)) { 
      pantalla = 84;
      println( "Instrucciones");
    } else if (pantalla == 0 && botones.botonPressed(mouseX, mouseY, 60, 300, 110, 30)) { 
      pantalla = 85;
      println( "Creditos");
    } else if (pantalla == 1 && mouseX  < width && mouseY < height) {
      pantalla = 2;
      println( "Acto 1");
    } else if (pantalla == 2 && mouseX  < width && mouseY < height) {
      pantalla = 3;
    } else if (pantalla == 3 && mouseX  < width && mouseY < height) {
      pantalla = 4;
    } else if (pantalla == 4 && mouseX  < width && mouseY < height) {
      pantalla = 5;
    } else if (pantalla == 5 && botones.botonPressed(mouseX, mouseY, 40, 402, 165, 30)) {
      pantalla = 6; //cerrar puerta con llave
    } else if (pantalla == 6 && mouseX  < width && mouseY < height) {
      pantalla = 7;
    } else if (pantalla == 7 && mouseX  < width && mouseY < height) {
      pantalla = 8;
    } else if (pantalla == 8 && botones.botonPressed(mouseX, mouseY, 110, 402, 117, 30)) {
      pantalla = 9; //ir por suministros
    } else if (pantalla == 9 && mouseX  < width && mouseY < height) {
      pantalla = 10;
    } else if (pantalla == 10 && mouseX  < width && mouseY < height) {
      pantalla = 15;
      println( "Acto 2A");
    } else if (pantalla == 5 && botones.botonPressed(mouseX, mouseY, 600, 402, 180, 30)) {
      pantalla = 12; //investigar afuera de su casa
    } else if (pantalla == 12 && botones.botonPressed(mouseX, mouseY, 93, 405, 190, 30)) {
      pantalla = 13; //corre en direccion a la ciudad
    } else if (pantalla == 13 && mouseX  < width && mouseY < height) {
      pantalla = 86;  
      
    } else if (pantalla == 13 && mouseX  < width && mouseY < height) {
      pantalla = 29;
      println( "Acto 2B");
    } else if (pantalla == 12 && botones.botonPressed(mouseX, mouseY, 600, 405, 105, 30)) {
      pantalla = 14; //entrar a su casa
    } else if (pantalla == 14 && mouseX  < width && mouseY < height) {
      pantalla = 8;
    } else if (pantalla == 8 && botones.botonPressed(mouseX, mouseY, 565, 402, 80, 30)) {
      pantalla = 11; //ir a vestirse
    } else if (pantalla == 11 && mouseX  < width && mouseY < height) {
      pantalla = 9;
    } else if (pantalla == 15 && mouseX  < width && mouseY < height) {
      pantalla = 16;
    } else if (pantalla == 16 && mouseX  < width && mouseY < height) {
      pantalla = 17;
    } else if (pantalla == 17 && botones.botonPressed(mouseX, mouseY, 40, 395, 250, 30)) {
      pantalla = 18; //ignorar el sonido y dirigirse al mercado
    } else if (pantalla == 18 && mouseX  < width && mouseY < height) {
      pantalla = 19;
    } else if (pantalla == 19 && mouseX  < width && mouseY < height) {
      pantalla = 20;
    } else if (pantalla == 20 && mouseX  < width && mouseY < height) {
      pantalla = 21;
    } else if (pantalla == 21 && mouseX  < width && mouseY < height) {
      pantalla = 30;
      println( "Acto 3A");
    } else if (pantalla == 17 && botones.botonPressed(mouseX, mouseY, 610, 395, 160, 30)) {
      pantalla = 22; //ir hacia los columpios
    } else if (pantalla == 22 && mouseX  < width && mouseY < height) {
      pantalla = 23;
    } else if (pantalla == 23 && mouseX  < width && mouseY < height) {
      pantalla = 24;
    } else if (pantalla == 24 && botones.botonPressed(mouseX, mouseY, 40, 400, 180, 30)) {
      pantalla = 25; //esconderse sigilosamente
    } else if (pantalla == 25 && botones.botonPressed(mouseX, mouseY, 100, 400, 120, 30)) {
      pantalla = 26; //arrojar una piedra
    } else if (pantalla == 26 && mouseX  < width && mouseY < height) {
      pantalla = 19;
    } else if (pantalla == 24 && botones.botonPressed(mouseX, mouseY, 705, 400, 50, 30)) {
      pantalla = 27; //correr1
    } else if (pantalla == 25 && botones.botonPressed(mouseX, mouseY, 650, 405, 50, 30)) {
      pantalla = 27; //correr2
    } else if (pantalla == 29 && mouseX  < width && mouseY < height) {
      pantalla = 28;
    } else if (pantalla == 28 && mouseX  < width && mouseY < height) {
      pantalla = 22;
    } else if (pantalla == 27 && mouseX  < width && mouseY < height) {
      pantalla = 82; 
      println( "Acto 3B");
    } else if (pantalla == 30 && mouseX  < width && mouseY < height) {
      pantalla = 31;
    } else if (pantalla == 31 && mouseX  < width && mouseY < height) {
      pantalla = 32;
    } else if (pantalla == 32 && botones.botonPressed(mouseX, mouseY, 50, 402, 130, 30)) {
      pantalla = 33; //entrar al callejón
    } else if (pantalla == 33 && botones.botonPressed(mouseX, mouseY, 35, 390, 190, 30)) {
      pantalla = 34; //buscar una venta abierta
    } else if (pantalla == 34 && mouseX  < width && mouseY < height) {
      pantalla = 35;
    } else if (pantalla == 35 && mouseX  < width && mouseY < height) {
      pantalla = 36;
    } else if (pantalla == 36 && mouseX  < width && mouseY < height) {
      pantalla = 37;
    } else if (pantalla == 37 && mouseX  < width && mouseY < height) {
      pantalla = 38;
    } else if (pantalla == 38 && mouseX  < width && mouseY < height) {
      pantalla = 39;
    } else if (pantalla == 39 && mouseX  < width && mouseY < height) {
      pantalla = 40;
    } else if (pantalla == 40 && mouseX  < width && mouseY < height) {
      pantalla = 41;
    } else if (pantalla == 41 && mouseX  < width && mouseY < height) {
      pantalla = 42;
    } else if (pantalla == 42 && mouseX  < width && mouseY < height) {
      pantalla = 43;
    } else if (pantalla == 43 && mouseX  < width && mouseY < height) {
      pantalla = 44;
    } else if (pantalla == 44 && mouseX  < width && mouseY < height) {
      pantalla = 45;    
      println( "Final bueno");
    } else if (pantalla == 32 && botones.botonPressed(mouseX, mouseY, 590, 402, 160, 30)) {
      pantalla = 53; //doblar hacia la avenida
    } else if (pantalla == 53 && mouseX  < width && mouseY < height) {
      pantalla = 54;
    } else if (pantalla == 54 && mouseX  < width && mouseY < height) {
      pantalla = 55;
    } else if (pantalla == 55 && botones.botonPressed(mouseX, mouseY, 50, 402, 140, 30)) {
      pantalla = 56; //darles de comer
    } else if (pantalla == 56 && mouseX  < width && mouseY < height) {
      pantalla = 57;
    } else if (pantalla == 57 && mouseX  < width && mouseY < height) {
      pantalla = 58;
    } else if (pantalla == 58 && mouseX  < width && mouseY < height) {
      pantalla = 59;
    } else if (pantalla == 59 && mouseX  < width && mouseY < height) {
      pantalla = 60;
    } else if (pantalla == 60 && mouseX  < width && mouseY < height) {
      pantalla = 61;
    } else if (pantalla == 61 && mouseX  < width && mouseY < height) {
      pantalla = 62;
    } else if (pantalla == 62 && mouseX  < width && mouseY < height) {
      pantalla = 63;    
      println( "Final neutral");
    } else if (pantalla == 33 && botones.botonPressed(mouseX, mouseY, 590, 390, 172, 50)) {
      pantalla = 46; //destrabar las escaleras de emergencia y subir
    } else if (pantalla == 46 && mouseX  < width && mouseY < height) {
      pantalla = 47;
    } else if (pantalla == 47 && mouseX  < width && mouseY < height) {
      pantalla = 48;
    } else if (pantalla == 48 && mouseX  < width && mouseY < height) {
      pantalla = 49;
    } else if (pantalla == 49 && mouseX  < width && mouseY < height) {
      pantalla = 50;
    } else if (pantalla == 50 && mouseX  < width && mouseY < height) {
      pantalla = 51;
    } else if (pantalla == 51 && mouseX  < width && mouseY < height) {
      pantalla = 52;
      println( "Final neutral");
    } else if (pantalla == 55 && botones.botonPressed(mouseX, mouseY, 680, 400, 50, 30)) {
      pantalla = 64; //correr3
    } else if (pantalla == 64 && mouseX  < width && mouseY < height) {
      pantalla = 65;
    } else if (pantalla == 65 && mouseX  < width && mouseY < height) {
      pantalla = 66;
    } else if (pantalla == 66 && mouseX  < width && mouseY < height) {
      pantalla = 67;
      println( "Final malo");
    } else if (pantalla == 82 && mouseX  < width && mouseY < height) {
      pantalla = 68;
    } else if (pantalla == 68 && mouseX  < width && mouseY < height) {
      pantalla = 69;
    } else if (pantalla == 69 && botones.botonPressed(mouseX, mouseY, 35, 410, 180, 30)) {
      pantalla = 77; //seguir las luces del bosque
    } else if (pantalla == 77 && mouseX  < width && mouseY < height) {
      pantalla = 78;
    } else if (pantalla == 78 && mouseX  < width && mouseY < height) {
      pantalla = 79;
    } else if (pantalla == 79 && mouseX  < width && mouseY < height) {
      pantalla = 80;
    } else if (pantalla == 80 && mouseX  < width && mouseY < height) {
      pantalla = 81;     
      println( "Final ovni");
    } else if (pantalla == 69 && botones.botonPressed(mouseX, mouseY, 270, 410, 190, 30)) {
      pantalla = 75; //seguir caminando por la ruta
    } else if (pantalla == 75 && mouseX  < width && mouseY < height) {
      pantalla = 76;
      println( "Final neutral");
    } else if (pantalla == 69 && botones.botonPressed(mouseX, mouseY, 548, 410, 190, 30)) {
      pantalla = 70; //comer junto a los monstruos
    } else if (pantalla == 70 && mouseX  < width && mouseY < height) {
      pantalla = 71;
    } else if (pantalla == 71 && mouseX  < width && mouseY < height) {
      pantalla = 72;
    } else if (pantalla == 72 && mouseX  < width && mouseY < height) {
      pantalla = 73;
    } else if (pantalla == 73 && mouseX  < width && mouseY < height) {
      pantalla = 74;    
      println( "Final malo");
    }
  }

  void keyPressed() {//REINICIO
    if (key == ' ') {
      pantalla = 0;
    }
  }
}
