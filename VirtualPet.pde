import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(500, 500);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  background(192);
  int y = arduino.analogRead(5);
  System.out.println(y);
  ellipse(250, 2*y, 50, 50);
  fill(100,100,100);
ellipse(250,250,200,300);
fill(230,200,200);
ellipse(250,270,200,170);
fill(170,170,170);
ellipse(250,330,200,200);
fill(180,180,180);
ellipse(170,300,80,180);
fill(180,180,180);
ellipse(330,300,80,180);
fill(255,255,255);
ellipse(215,150,30,35);
fill(255,255,255);
ellipse(285,150,30,35);
fill(0,0,0);
ellipse(285,150,20,20);
fill(0,0,0);
ellipse(215,150,20,20);
fill(50,50,50);
triangle(245,150,255,150,250,170);
fill(205,205,205);
triangle(245,150,255,150,250,165);
}
