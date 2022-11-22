//https://youtu.be/FZT1qdiLfVY

import ddf.minim.*;

Minim minim;
AudioPlayer reproductorAudio;
Aventura aventura;


void setup () {
  size (800, 450);
  imageMode(CORNER);
  aventura = new Aventura();
  minim = new Minim (this);
  reproductorAudio = minim.loadFile ("terror.mp3");
}


void draw () {
  aventura.draw();
}

void mousePressed(){
aventura.mousePressed();
}

void keyPressed(){
aventura.keyPressed();
}
