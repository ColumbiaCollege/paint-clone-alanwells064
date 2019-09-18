int prevmouseX = 0;
int prevmouseY = 0;
int thicc = 10;
int red = 0;
int green = 0;
int blue = 0;
void setup() {
  size(800, 400);
  background(255);
}
void draw() {
  if (mousePressed && mouseX<256 && mouseY<25) {
    red = mouseX;
  }
  if (mousePressed && mouseX<256 && mouseY>24 && mouseY<50) {
    green = mouseX;
  }
  if (mousePressed && mouseX<256 && mouseY>49 && mouseY<75) {
    blue = mouseX;
  }
  if (mousePressed && mouseX<256 && mouseY>74 && mouseY<100) {
    thicc = mouseX;
  }
  fill(red, green, blue);
  noStroke();
  rect(256, 0, 44, 75);
  if (mousePressed && (mouseX>300 || mouseY>99)) {
    noStroke();
    ellipse(mouseX, mouseY, thicc, thicc);
    stroke(red, green, blue);
    strokeWeight(thicc);
    line(mouseX, mouseY, prevmouseX, prevmouseY);
  }
  strokeWeight(1);
  for (int i = 0; i<256; i++) {
    stroke(red-red+i, green, blue);
    line(i, 0, i, 24);
  }
  for (int i = 0; i<256; i++) {
    stroke(red, green-green+i, blue);
    line(i, 25, i, 49);
  }
  for (int i = 0; i<256; i++) {
    stroke(red, green, blue-blue+i);
    line(i, 50, i, 74);
  }
  fill(50);
  rect(0,75,255,25);
  fill(255);
  text("R",8,17);
  text("G",8,42);
  text("B",8,67);
  text("THICC",8,92);
  stroke(0);
  line(red, 0, red, 24);
  line(green, 25, green, 49);
  line(blue, 50, blue, 74);
  line(thicc, 75, thicc, 99);
  prevmouseX = mouseX;
  prevmouseY = mouseY;
}
