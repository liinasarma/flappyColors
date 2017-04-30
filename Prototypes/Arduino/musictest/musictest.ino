

  // Stepper pins
  //int enable_pin = 2;   
  int dir_pin = 3;     
  int step_pin = 2;    

void setup() {
  // Initial setup of pins   
  pinMode(dir_pin, OUTPUT);
  pinMode(step_pin, OUTPUT);
    pinMode(5, OUTPUT);
  pinMode(4, OUTPUT);
    pinMode(7, OUTPUT);
  pinMode(6, OUTPUT);
    pinMode(9, OUTPUT);
  pinMode(8, OUTPUT);
 // pinMode(enable_pin, OUTPUT);
}

void loop() {
//  digitalWrite(enable_pin, HIGH);
//  delay(1);   
for (int i = 0; i<4000; i++)       //Iterate for 4000 microsteps  
  {  

  digitalWrite(dir_pin, LOW);  // clockwise
  delay(1);  
  perform_step(100);            // perform 200 steps
 delay(1);
  digitalWrite(dir_pin, HIGH);   // anti-clockwise
 delay(1); 
  perform_step(2000);
  }  


  //delay(100);
  for (int i = 0; i<4000; i++)       //Iterate for 4000 microsteps  
  {  

  digitalWrite(5, LOW);  // clockwise
  delay(1);  
  perform_step(100);            // perform 200 steps
 delay(1);
  digitalWrite(5, HIGH);   // anti-clockwise
 delay(1); 
  perform_step(200);
  } 
  for (int i = 0; i<4000; i++)       //Iterate for 4000 microsteps  
  {  

  digitalWrite(7, LOW);  // clockwise
  delay(1);  
  perform_step(200);            // perform 200 steps
 delay(1);
  digitalWrite(7, HIGH);   // anti-clockwise
 delay(1); 
  perform_step(200);
  } 
  for (int i = 0; i<4000; i++)       //Iterate for 4000 microsteps  
  {  

  digitalWrite(9, LOW);  // clockwise
  delay(1);  
  perform_step(150);            // perform 200 steps
 delay(1);
  digitalWrite(9, HIGH);   // anti-clockwise
 delay(1); 
  perform_step(2000);
  } 
//  perform_step(100);            // perform 100 steps
//  delay(500);
//  perform_step(100);            // perform 100 steps
//  delay(500);  
}

void perform_step(long steps) {
  for (long i=0; i < steps; i++) {
    //digitalWrite(step_pin, HIGH);
    digitalWrite(step_pin, LOW);
    digitalWrite(4, LOW);
    digitalWrite(6, LOW);
    digitalWrite(8, LOW);
    delayMicroseconds(1000);
   digitalWrite(2, HIGH);
   digitalWrite(4, HIGH);
   digitalWrite(6, HIGH);
   digitalWrite(8, HIGH);
   delayMicroseconds(1000);
    //delayMicroseconds(DELAY);
  }
  // Set the pin low before we end
  digitalWrite(2, LOW);
  digitalWrite(4, LOW);
  digitalWrite(6, LOW);
  digitalWrite(8, LOW);
}

//void perform_step(long steps) {
//  for (long i=0; i < steps; i++) {
//    //digitalWrite(step_pin, HIGH);
//    digitalWrite(4, LOW);
//    
//    delayMicroseconds(1000);
//   digitalWrite(4, HIGH);
//   delayMicroseconds(1000);
//    //delayMicroseconds(DELAY);
//  }
//  // Set the pin low before we end
//  digitalWrite(4, LOW);
//}
//void perform_step(long steps) {
//  for (long i=0; i < steps; i++) {
//    //digitalWrite(step_pin, HIGH);
//    digitalWrite(6, LOW);
//    
//    delayMicroseconds(1000);
//   digitalWrite(6, HIGH);
//   delayMicroseconds(1000);
//    //delayMicroseconds(DELAY);
//  }
//  // Set the pin low before we end
//  digitalWrite(6, LOW);
//}

//void perform_step(long steps) {
//  for (long i=0; i < steps; i++) {
//    //digitalWrite(step_pin, HIGH);
//    digitalWrite(8, LOW);
//    
//    delayMicroseconds(1000);
//   digitalWrite(8, HIGH);
//   delayMicroseconds(1000);
//    //delayMicroseconds(DELAY);
//  }
//  // Set the pin low before we end
//  digitalWrite(8, LOW);
//}
