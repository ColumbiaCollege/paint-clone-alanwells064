//define variables
int prevmouseX = 0;
int prevmouseY = 0;
int thicc = 10;
int red = 0;
int green = 0;
int blue = 0;
//set canvas size & color
void setup() {
  size(800, 400);
  background(255);
}
//start drawing
void draw() {
  //collision for color sliders
  if (mousePressed && mouseX<256 && mouseY<25) {
    red = mouseX;
  }
  if (mousePressed && mouseX<256 && mouseY>24 && mouseY<50) {
    green = mouseX;
  }
  if (mousePressed && mouseX<256 && mouseY>49 && mouseY<75) {
    blue = mouseX;
  }
  //collision for thicc slider
  if (mousePressed && mouseX<256 && mouseY>74 && mouseY<100) {
    thicc = mouseX;
  }
  //set fill to whatever is defined by sliders
  fill(red, green, blue);
  //show the current fill at the top of the screen
  noStroke();
  rect(256, 0, 75, 75);
  //use the mouse's current & previous location to draw when mouse is clicked and not in sliders
  if (mousePressed && (mouseX>331 || mouseY>99)) {
    noStroke();
    ellipse(mouseX, mouseY, thicc, thicc);
    stroke(red, green, blue);
    strokeWeight(thicc);
    line(mouseX, mouseY, prevmouseX, prevmouseY);
  }
  strokeWeight(1);
  //draw sliders using current fill
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
  //draw thicc slider
  fill(50);
  rect(0,75,255,25);
  //draw labels for all sliders
  fill(255);
  text("R",8,17);
  text("G",8,42);
  text("B",8,67);
  text("THICC",8,92);
  //draw cursors for all sliders
  stroke(0);
  line(red, 0, red, 24);
  line(green, 25, green, 49);
  line(blue, 50, blue, 74);
  line(thicc, 75, thicc, 99);
  //update previouse mouse position
  prevmouseX = mouseX;
  prevmouseY = mouseY;
}
