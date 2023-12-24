#include <Servo.h>
 
Servo myservo1;  // create servo object to control a servo
Servo myservo2;
Servo myservo3;
Servo myservo4;
// Recommended PWM GPIO pins on the ESP32 include 2,4,12-19,21-23,25-27,32-33
int servo1 = 3;
int servo2 = 5;
int servo3 = 6;
int servo4 = 9;

void setup() {

  myservo1.attach(servo1);
  myservo2.attach(servo2);
  myservo3.attach(servo3);
  myservo4.attach(servo4);
}
 
void loop() {
  
  rotation();
  
}

void rotation(){
  int val1 = 0;
  int val2 = 90;
  int val3 = 60;
  int val4 = 30;
  
  myservo1.write(0);
  myservo2.write(90);
  myservo3.write(0);
  myservo4.write(0);

for(int i=0; i<val1; i++){
  myservo1.write(i);
  delay(100);
}

for(int i=90; i<val2; i++){
  myservo1.write(i);
  delay(100);
}

for(int i=0; i<val3; i++){
  myservo3.write(i);
  delay(100);
}

for(int i=0; i<val4; i++){
  myservo4.write(i);
  delay(100);
}
myservo1.detach();
myservo2.detach();
myservo3.detach();
myservo4.detach();
delay(100000);
}