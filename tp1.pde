
boolean rect = false;
PFont tipografia;
int posX1, posX2, posX3, posX4;
PImage foto;
int numImagen = 1;
int totalImagenes = 7;
int miVariable = 1;

void setup () {
  size (600, 600);
  println (miVariable);
  tipografia = loadFont ("FelixTitlingMT-48.vlw");
  foto = loadImage ("img0" + numImagen + ".jpg");
  textAlign (CENTER);
  textFont (tipografia, 20);
}

void draw () {
  background (200);
  println (frameCount);
  miVariable = frameCount;
  println (miVariable);
  image (foto, 0, 0, width, height);
  fill (150);
  text ("Pretty Guardian Sailor Moon Eternal:\n\n The Movie"+
    "\n\n\n\n\n\n\n\n Dirección: Chiaki Kon."+
    "\n\n\n\n\n\n\n\n Producción: \n\n Runa Tanaka \n\n Hideharu Gomi \n\n Yosuke Asama"+
    "\n\n\n\n\n\n\n\n Guión: \n\n Kazuyuki Fueyasu \n\n Naoko Takeuchi"+
    "\n\n\n\n\n\n\n\n Basada en: \n\n Sailor Moon \n\n por Naoko Takeuchi"+
    "\n\n\n\n\n\n\n\n Música: \n\n Yasuharu Takanashi"+
    "\n\n\n\n\n\n\n\n Fotografía: \n\n Keio Onodera"+
    "\n\n\n\n\n\n\n\n Montaje: \n\n Shigenitsu Hamano \n\n Takashi Yanagida"+
    "\n\n\n\n\n\n\n\n Animador: \n\n TBA"+
    "\n\n\n\n\n\n\n\n Cast: \n\n Usagi Tsukino/Sailor Moon - Kotono Mitsuishi \n\n Ami Mizuno/Sailor Mercury - Hisako Kanemoto \n\n Rei Hino/Sailor Mars - Rina Sato \n\n Makoto Kino/Sairlo Jupiter - Mew Azama \n\n Minako Aino/Sailor Venus - Shizuka Ito \n\n Chibi-Usa/Sailor Chibi Moon - Misato Fukuen \n\n Haruka Tenoh/Sailor Uranus - Junko Minagawa \n\n Michiru Kaioh/Sailor Naptune - Sayaka Ohara \n\n Setsuna Meioh/Sailor Pluto - Ai Maeda \n\n Hotaru Tomoe/Sailor Saturn - Yukiyo Fujii \n\n Mamoru Chiba/Tuxedo Mask - Jouji Shibue \n\n Luna - Ryo Hirohashi \n\n Artemis - Taishi Murata \n\n Diana - Shoko Nakagawa \n\n Queen Nehelenia - Arai Nanao \n\n Zirconia - Naomi Watanabe \n\n Palla Palla/Sailor Pallas - Xanthe Huynh \n\n Jun Jun/Sailor Juno - Erika Ishii \n\n Cere Cere/ Sailor Ceres - Reina Ueda \n\n Ves Ves/Sailor Vesta - Rie Takahashi \n\n Pegasus/Helios - Yahitsugu Matsuoka \n\n Queen Serenity - Mami Koyama", 
    300, 600-miVariable);
 
  rect (500, 500, 50, 50); //Boton
  if (mouseX >= 500 && mouseX <= 600 && mouseY >= 500 && mouseY <= 600) {
    fill (200, 0, 0);
  } else {
    fill (255, 0, 0, 50);
  }
}

void mouseClicked() {
  if (mouseX >= 500 && mouseX <= 600 && mouseY >= 500 && mouseY <= 600) {
    numImagen++;
    if (numImagen == totalImagenes + 1) {
      numImagen = 1;
    }
  } else if (mouseX < width * 0.1) {
    numImagen--;
    if (numImagen == 0) {
      numImagen = totalImagenes;
    }
  }
  foto = loadImage("img0" + numImagen + ".jpg");
}
