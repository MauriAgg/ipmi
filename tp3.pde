// https://youtu.be/V4JmbMrCZi4?si=DA6G7JId461VXUIf
PImage optica;
int tamCuadrilla = 2;
int lineasnum = 14;
boolean cambiarColor = false;
int blanco = 0;
int negro = 255;

float lineas(float lineasnum) {
  float numero = 7 + lineasnum/2;
  return numero;
}

void setup() {
  size(800, 400);
  optica = loadImage("optica.jpg");
  background(255);
  if (lineasnum == 2*7) {
    println("Hay " + lineasnum + " líneas por cuadrilla");
  }
}

void draw() {
    float degrade = map(mouseY, 0, height, blanco, negro);
  if (mouseX > width/2) {
    background(degrade);
  }
  image(optica, 0, 0, 400, 400);
  cuadrilla();
}

void mousePressed() {
  cambiarColor = !cambiarColor;
}
