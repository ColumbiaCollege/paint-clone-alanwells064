//define variables
int prevmouseX = 0;
int prevmouseY = 0;
int thicc = 10;
int tall = 10;
int red = 0;
int green = 0;
int blue = 0;
int thicctall = 1;
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
  if (mousePressed && mouseX>330 && mouseX<431 && mouseY<25) {
    thicc = mouseX-331;
  }
  //collision for tall slider
  if (mousePressed && mouseX>330 && mouseX<431 && mouseY>24 && mouseY<50) {
    tall = mouseX-331;
  }
  //set fill to whatever is defined by sliders
  fill(red, green, blue);
  //show the current fill at the top of the screen
  noStroke();
  rect(256, 0, 75, 75);
  //use the mouse's current & previous location to draw when mouse is clicked and not in sliders
  if (mousePressed && mouseY>74) {
    noStroke();
    ellipse(mouseX, mouseY, thicc, tall);
    stroke(red, green, blue);
    //strokeWeight(thicc);
    //line(mouseX, mouseY, prevmouseX, prevmouseY);
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
  //draw thicc & height sliders
  noStroke();
  fill(50);
  rect(331, 0, 100, 25);
  fill(60);
  rect(331, 25, 100, 25);
  fill(70);
  rect(331, 50, 100, 25);
  //effects and text of tall=thicc button
  fill(255);
  if (thicctall == 1) {
    tall = thicc;
    text("✓ TALL=THICC", 339, 67);
  } else {
    text("X TALL=THICC", 339, 67);
  }
  //draw labels for all sliders
  fill(255);
  text("R", 8, 17);
  text("G", 8, 42);
  text("B", 8, 67);
  text("THICC", 339, 17);
  text("TALL", 339, 42);
  //draw cursors for all sliders
  stroke(0);
  line(red, 0, red, 24);
  line(green, 25, green, 49);
  line(blue, 50, blue, 74);
  line(thicc+331, 0, thicc+331, 24);
  line(tall+331, 25, tall+331, 49);
  //update previouse mouse position
  prevmouseX = mouseX;
  prevmouseY = mouseY;
}
void mouseClicked() {
  //colision for tall=thicc button
  if (mouseX>330 && mouseX<431 && mouseY>49 && mouseY<75) {
    thicctall = (thicctall+1)%2;
  }
}
void brushdraw(int number){
  if(number == 0){}
  if(number == 1){}
  if(number == 2){}
  if(number == 3){}
  if(number == 4){}
  if(number == 5){}
  if(number == 6){}
  if(number == 7){}
  if(number == 8){}
}
void star(){
  
}
