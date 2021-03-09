import controlP5.*;
import processing.serial.*;
Serial port;
ControlP5 cp5;

void setup(){
   port = new Serial(this, "/dev/cu.usbserial-110");
   size(300,400); 
   printArray(Serial.list());
   cp5 = new ControlP5(this);
   cp5.addButton("onoff")
   .setPosition(100,50)
   .setSize(100, 80);
}

void draw(){
  background(150,0,150);
  fill(0,255,0);
  text("LED CONTROL", 100, 30);
}

void onoff(){
  port.write('r');
}
