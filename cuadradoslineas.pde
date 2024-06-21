void lineas() {
  float centroX = 575 + 25;
  float centroY = 175 + 25;
  float angulo = 0;
  for (int i = 0; i < 30; i++) {
    for (int j = 0; j < 30; j++) {
      float radio = (i + 1) * 10;
      pushMatrix();
      stroke(210);
      translate(centroX, centroY);
      rotate(radians(angulo));
      line(0, 0, radio, 200);
      popMatrix();

      angulo += 30;
    }
  }
}

void cuadrados() {
  noFill();
  stroke(255);
  int tamain = 50;
  int incrementotam = 110;

  int centroX = 600;
  int centroY = 200;

  for (int i = 0; i < 6; i++) {
    int tam = tamain + i *incrementotam;

    int posX = centroX - tam/2;
    int posY = centroY - tam/2;

    rect(posX, posY, tam, tam);
  }
}

void cuadrados2() {
  noFill();
  stroke(255);
  int tamain2 = 50;
  int incrementotam2 = 20;
  int centroX = 600;
  int centroY = 200;

  for (int i = 0; i < 4; i++) {
    int tam = tamain2 + i * incrementotam2;

    int posX = centroX - tam/2;
    int posY = centroY - tam/2;

    rect(posX, posY, tam, tam);
  }
}
