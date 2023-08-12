//https://drive.google.com/file/d/1opMv9NUojW83spbMbm_tz6_-oKrfGcxY/view?usp=sharing
//https://www.youtube.com/watch?v=8EuySHUziWg


PFont font[] = new PFont [2];
int maxImages = 15;
PImage []img = new PImage [maxImages];
int escena;
boolean hiceClickEnBoton;
String [] texto;
int linea;




void setup() {
  size(600, 600);  
  font[0] = loadFont("TwCenMT-Italic-48.vlw");   
  textAlign(CENTER);
  textFont(font[0], 25);
  texto = loadStrings("tresmosqueteros.txt");

  escena = 0;

  linea = 0;

  for (int i = 0; i < img.length; i++) {
    img[i] = loadImage("pantalla_" + i + ".png");
  }
}

void draw() {
  textAlign(CENTER);
  //println(escena);

  if (escena == 0) {
    escena0();
  } else if (escena == 1) {
    escena1(texto[linea] +"\n" + texto[linea+1], width/2, 78, 20, img[1]);
  } else if (escena == 2) {
    escena1(texto[linea+2] +"\n" + texto[linea+3] + "\n" + texto[linea+4], width/2, 73, 18, img[2]);
  } else if (escena == 3) {
    escena2(texto[linea+5] +"\n" + texto[linea+6] + "\n" + texto[linea+7] + "\n" + texto[linea+8], width/2, 63, 18, img[3]);
  } else if (escena == 4) {
    escena1(texto[linea+9] +"\n" + texto[linea+10] + "\n" + texto[linea+11], width/2, 70, 18, img[4]);
  } else if (escena == 5) {
    escena1(texto[linea+12] +"\n" + texto[linea+13], width/2, 80, 18, img[4]);
  } else if (escena == 14) {
    escena1(texto[linea+14] +"\n" + texto[linea+15], width/2, 78, 18, img[13]);
  } else if (escena == 7) {
    escena1(texto[linea+16] +"\n" + texto[linea+17], width/2, 80, 18, img[6]);
  } else if (escena == 8) {
    escena2(texto[linea+18] +"\n" + texto[linea+19] + "\n" + texto[linea+20] + "\n" + texto[linea+21], width/2, 65, 16, img[7]);
  } else if (escena == 10) {
    escena1(texto[linea+22] +"\n" + texto[linea+23], width/2, 80, 18, img[9]);
  } else if (escena == 11) {
    escena2(texto[linea+24] +"\n" + texto[linea+25] + "\n" + texto[linea+26] + "\n" + texto[linea+27], width/2, 65, 16, img[10]);
  } else if (escena == 13) {
    escena1(texto[linea+28] +"\n" + texto[linea+29] + "\n" + texto[linea+30], width/2, 75, 18, img[12]);
  } else if (escena == 16) {
    escena1(texto[linea+31] +"\n" + texto[linea+32], width/2, 75, 18, img[14]);
  } else if (escena == 6) {
    escena1(texto[linea+33] +"\n" + texto[linea+34], width/2, 80, 18, img[5]);
  } else if (escena == 9) {
    escena1(texto[linea+35] +"\n" + texto[linea+36], width/2, 80, 18, img[8]);
  } else if (escena == 12) {
    escena1(texto[linea+37] +"\n" + texto[linea+38], width/2, 80, 18, img[11]);
  } else if (escena == 17) {
    escenacred();
  }
}

void mousePressed() {
 

  if (escena == 1) {
    escena = 2;
  } else if (escena == 2) {
    escena = 3;
  } else if (escena == 4) {
    escena = 5;
  } else if (escena == 5) {
    escena = 14;
  } else if (escena == 14) {
    escena = 7;
  } else if (escena == 7) {
    escena = 8;
  } else if (escena == 10) {
    escena = 11;
  } else if (escena == 13) {
    escena = 16;
  } else if (escena == 17 || escena == 6 || escena == 9 || escena == 12 || escena == 16) {
    escena = 0;
  } 

  if ( escena == 0 && mouseX > 50 && mouseX < 200 && mouseY > 500 && mouseY < 550) {
    escena = 1;
  }
  if (hiceClickEnBoton()) {
    escena = 17;
    linea = 0;
  }
  if (escena==3 && mouseX > 50 && mouseX < 200 && mouseY > 500 && mouseY < 550) {
    escena=6;
  }
  if (escena==3 && mouseX > 400 && mouseX < 550 && mouseY > 500 && mouseY < 550) {    
    escena=4;
  }

  if (escena == 8 && mouseX > 50 && mouseX < 200 && mouseY > 500 && mouseY < 550) {
    escena=9;
  }
  if (escena == 8 && mouseX > 400 && mouseX < 550 && mouseY > 500 && mouseY < 550) {    
    escena=10;
  }
  if (escena==11 && mouseX > 50 && mouseX < 200 && mouseY > 500 && mouseY < 550) {
    escena=13;
  }
  if (escena==11 && mouseX > 400 && mouseX < 550 && mouseY > 500 && mouseY < 550) {    
    escena=12;
  }
}
