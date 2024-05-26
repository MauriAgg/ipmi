//Aguirre Mauricio, com3, 94025/4
PImage foto1;
PImage foto2;
PImage foto3;
PFont fuente;
int x;
int tiempo;
int iy;
int ft;
void setup() {
  size(640, 480);
  foto1 = loadImage("nft1.jpg");
  foto2 = loadImage("nft2.jpg");
  foto3 = loadImage("nft3.png");
  fuente = createFont("retro.ttf", 12);
  x = 10;
  frameRate(2);
  tiempo = 0;
  iy = 0;
  ft = 1;
}

void draw() {
  image(foto1, 0, 0, 640, 480);
  textFont(fuente);
  fill(255);
  text("La obra NFT del artista Refik Anadol está compuesta\npor una sucesión de 1.742.772 de imágenes de corales\n             intervenidas digitalmente.", x, iy);
  if (x == 10) {
    tiempo += 1;
    if (iy < 420) {
      iy += 210;
    }
  }
  if (tiempo >= 12) {
    image(foto2, 0, 0, 640, 480);
    textSize(ft);
    text("La obra se presentó en el gran teatro Colón y le\ndió al público una gran experiencia inmersiva.", 10, 420);
    if (ft < 12) {
      ft += 3;
    }
  }
  if (tiempo == 24) {
    ft = 1;
  } else if (tiempo >= 26) {
    image(foto3, 0, 0, 640, 480);
    textSize(ft);
    text("Machine Hallucinations:Coral es una de las obras más\nimportantes de la historia del arte digital.\nUn cruce entre arte, ciencia y tecnología es\nesta obra tridimensional.", 10, 420);
    if (ft < 12) {
      ft += 1;
    }
  }
  if (tiempo >= 36) {
    fill(255);
    rect(260, 240, 100, 40);
    fill(0);
    textSize(10);
    text("Reiniciar", 265, 265);
  }

  println(tiempo);
}

void mousePressed() {
  if (tiempo >= 36 && mouseX > 260 && mouseX < 360 && mouseY > 240 && mouseY < 280) {
    tiempo = 0;
    iy = 0;
    ft = 1;
  }
}
