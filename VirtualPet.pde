import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(500, 500);
  arduino = new Arduino(this, Arduino.list()[0], 57600); 
  //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  int y = arduino.analogRead(4)/20;
  int x = arduino.analogRead(5)/10;
  System.out.println(x);
  System.out.println(y);
  if(x>=105)
  x=105;
  background(2*x+45);
fill(x+160,x+42,x+42);
triangle(0,490,0,495,1000,485);
fill(x+105);
triangle(210-(y),485,290+(y),485,250,250-(y));
fill(x+205,x+5,x+5);
triangle(220,250,178,490,185,490);
triangle(280,250,322,490,315,490);
fill(x+100);
ellipse(250,250,200+(y),300);
fill(x+230,x+200,x+200);
ellipse(250,270-(y),200,170);
fill(x+150);
ellipse(250,330-(y),200+(y),200+(y));
fill(x+150);
ellipse(170-(y),300+(y),80,180+(y));
ellipse(330+(y),300+(y),80,180+(y));
fill(225);
ellipse(215,150,30,35);
ellipse(285,150,30,35);
fill(x+0);
ellipse(285,150,20,20);
ellipse(215,150,20,20);
fill(x+50);
triangle(245,150,255,150,250,170);
fill(x+205,x+205,x+0);
triangle(245,150,255,150,250,165);
}
