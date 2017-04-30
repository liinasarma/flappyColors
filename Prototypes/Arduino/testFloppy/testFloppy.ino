void setup() {
  // put your setup code here, to run once:
  pinMode(2, OUTPUT); // Step control 1
  pinMode(3, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
//digitalWrite(3, HIGH);    //HIGH or LOW change direction.  
//digitalWrite(3, HIGH);
delay(100) ; //100 milliseconds  

  for (int i = 0; i<4000; i++)       //Iterate for 4000 microsteps  
  {  

//digitalWrite(2, LOW);     
digitalWrite(2, HIGH);  //This LOW to HIGH change is what  
//creates the "Rising Edge" so the driver knows when to step.  

delayMicroseconds(40);//s
  }
}
