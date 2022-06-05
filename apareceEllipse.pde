void apareceEllipse() {
  float escalaEllipse = map(mouseX, 0, width, 40, 300);
  fill(150);
  ellipse(width/2, height/2, escalaEllipse, escalaEllipse);
}
