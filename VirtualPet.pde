import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(500, 500);
  arduino = new Arduino(this, Arduino.list()[0], 57600); 
  //change the [0] to a [1] or [2] etc. if your program doesn't work
  background(0);
}

public void draw() {
  int y = arduino.analogRead(5);
  System.out.println(y);
  fill(0,0,0,10);
  rect(0,0,500,500);
  fill(255);
  ellipse(250, 2*y, 50, 50);
fill(160,42,42);
triangle(0,490,0,495,1000,485);
fill(105);
triangle(210,485,290,485,250,250);
fill(255,5,5);
triangle(220,250,178,490,185,490);
triangle(280,250,322,490,315,490);
fill(100);
ellipse(250,250,200,300);
fill(230,200,200);
ellipse(250,270,200,170);
fill(170);
ellipse(250,330,200,200);
fill(180);
ellipse(170,300,80,180);
ellipse(330,300,80,180);
fill(255);
ellipse(215,150,30,35);
ellipse(285,150,30,35);
fill(0);
ellipse(285,150,20,20);
ellipse(215,150,20,20);
fill(50);
triangle(245,150,255,150,250,170);
fill(255,255,0);
triangle(245,150,255,150,250,165);
}
