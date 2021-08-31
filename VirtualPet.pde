import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(500, 500);
  arduino = new Arduino(this, Arduino.list()[0], 57600); 
  //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  int y = arduino.analogRead(7);
  System.out.println(y);
  if((y/20)>30)
  y=30;
  background(50);
fill(160,42,42);
triangle(0,490,0,495,1000,485);
fill(105);
triangle(210-(y/20),485,290+(y/20),485,250,250-(y/20));
fill(255,5,5);
triangle(220,250,178,490,185,490);
triangle(280,250,322,490,315,490);
fill(100);
ellipse(250,250,200+(y/20),300);
fill(230,200,200);
ellipse(250,270-(y/20),200,170);
fill(170);
ellipse(250,330-(y/20),200+(y/20),200+(y/20));
fill(180);
ellipse(170-(y/20),300+(y/20),80,180+(y/20));
ellipse(330+(y/20),300+(y/20),80,180+(y/20));
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
