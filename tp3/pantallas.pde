void escena0() {

  image(img[0], 0, 0);
  float iniciarX = 115;
  float iniciarY = 550;
  float creditosX = 475;
  float creditosY = 550;
  float textSize = 25;    
  float distIniciar = dist(mouseX, mouseY, iniciarX, iniciarY);
  float rIniciar = map(distIniciar, 0, textSize, 0, 255); 
  fill(rIniciar);
  push();
  textAlign(CENTER);
  textSize(40);
  text("Iniciar", iniciarX, iniciarY);
  float distCreditos = dist(mouseX, mouseY, creditosX, creditosY); 
  float rCreditos = map(distCreditos, 0, textSize, 0, 255); 
  fill(rCreditos);
  textAlign(CENTER);
  text("Creditos", creditosX, creditosY);
  pop();
}

void escena1(String texto, float tx, float ty, int ttam, PImage escena) {

  image(escena, 0, 0);
  fill(5, 104, 203);
  strokeWeight(6);
  rect(50, 40, 500, 90);
  fill(255);
  textSize(ttam);
  text(texto, tx, ty);
}

void escena2(String texto, float tx, float ty, int ttam, PImage escena) {

  image(escena, 0, 0);
  fill(5, 104, 203);
  strokeWeight(6);
  rect(50, 40, 500, 90);
  fill(255);
  textSize(ttam);
  text(texto, tx, ty);
  botonA();
  botonB();
}

void botonA() {
  fill(5, 104, 203);
  strokeWeight(5);
  rect(50, 500, 125, 75);
  push();
  fill(255);
  textSize(50);
  text("A", 113, 553);
  pop();
}

void botonB() {
  fill(5, 104, 203);
  strokeWeight(5);
  rect(420, 500, 125, 75);
  push();
  fill(255);
  textSize(50);
  text("B", 483, 553);
  pop();
}

void escenacred() {
  linea = 0;
  textAlign(LEFT);
  fill(26, 82, 143);
  rect(0, 0, 600, 600);
  fill(255);
  textSize(50);  
  text("Autor", 70, 180);
  text("Alumno", 70, 250);
  text("Imagenes", 70, 320);
  textSize(35);
  text("Alexandre Dumas", 300, 180);
  text("Martin Alegre", 350, 250);
  text("Freepik", 440, 320);
}

boolean hiceClickEnBoton() {
  return escena == 0 && mouseX > 400 && mouseX < 550 && mouseY > 500 && mouseY < 550;
}
