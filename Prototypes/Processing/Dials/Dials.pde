//Dials - Work In progress for Creative Projects2


//-----imported libraries and their variables

//import controlP5.*;
//ControlP5 controlP5;
//Test t; 
import ddf.minim.*;
import ddf.minim.analysis.*;
Minim minim;
AudioPlayer player;
AudioSample tick;
//FFT fft;

//--------Array Lists for objects
ArrayList<Dial> dials = new ArrayList<Dial>();
ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();

//--------Other global variables

//ints

int speed1 = 2;
int speed2 = 5; 
int speed3 = 10; 
int speed4 = 20; 
int speed5 = 3; 
int count2 = 10;
int m;
int start;

//floats
float speed = 0.5; 
float angle1 = 45.0;
float angle2 = -70.0;
float angle3 = 60.0;
float angle4 = -45.0;
float angleAll = PI;
float radiusAll;
boolean ticking = false;

//vectors
PVector loc = new PVector(0, 0);
PVector pos = new PVector(0, 0);

  
  
void setup() {

  size(1000, 800);
  frameRate(10);
  
  //----------------controller library
  //controlP5 = new ControlP5( this );
  //t = new Test( "test" );

  //---------------sound library
  minim =  new Minim(this); 
  tick = minim.loadSample("tick.mp3"); 
  //tick = minim.loadFile("work.mp3"); 

  //adding objects to the array lists
  obstacles.add(new Obstacle(100, 100, count2, 70, pos));
  obstacles.add(new Obstacle(270, 100, count2, 70, pos));
  obstacles.add(new Obstacle(450, 100, count2, 70, pos));
  obstacles.add(new Obstacle(620, 100, count2, 70, pos));
  obstacles.add(new Obstacle(100, 270, count2, 70, pos));
  obstacles.add(new Obstacle(270, 270, count2, 70, pos));
  obstacles.add(new Obstacle(450, 270, count2, 70, pos));
  obstacles.add(new Obstacle(620, 270, count2, 70, pos));
  obstacles.add(new Obstacle(100, 450, count2, 70, pos));
  obstacles.add(new Obstacle(270, 450, count2, 70, pos));
  obstacles.add(new Obstacle(450, 450, count2, 70, pos));
  obstacles.add(new Obstacle(620, 450, count2, 70, pos));
  obstacles.add(new Obstacle(100, 620, count2, 70, pos));
  obstacles.add(new Obstacle(270, 620, count2, 70, pos));
  obstacles.add(new Obstacle(450, 620, count2, 70, pos));
  obstacles.add(new Obstacle(620, 620, count2, 70, pos));

  dials.add(new Dial(100, 100, speed, angle1, loc));
  dials.add(new Dial(270, 100, speed, angle2, loc));
  dials.add(new Dial(450, 100, speed, angle3, loc));
  dials.add(new Dial(620, 100, speed, angle4, loc));
  dials.add(new Dial(100, 270, speed, angle1, loc));
  dials.add(new Dial(270, 270, speed, angle2, loc));
  dials.add(new Dial(450, 270, speed, angle3, loc));
  dials.add(new Dial(620, 270, speed, angle4, loc));
  dials.add(new Dial(100, 450, speed, angle1, loc));
  dials.add(new Dial(270, 450, speed, angle2, loc));
  dials.add(new Dial(450, 450, speed, angle3, loc));
  dials.add(new Dial(620, 450, speed, angle4, loc));
  dials.add(new Dial(100, 620, speed, angle1, loc));
  dials.add(new Dial(270, 620, speed, angle2, loc));
  dials.add(new Dial(450, 620, speed, angle3, loc));
  dials.add(new Dial(620, 620, speed, angle4, loc));
}

void draw() {

  background(0, 0, 0);
  //player.play();
  //player.loop();
  //fft.forward( player.mix );

  
for (Dial dAll : dials) {
 dAll.display();

}

for (Obstacle oAll : obstacles) {
 oAll.display();

 oAll.keyPressed();
 oAll.tick();
}




  //-------------copypaste for further use
  
  //fft = new FFT( player.bufferSize(), player.sampleRate() );
  
  //--------------controller library
  //controlP5 = new ControlP5(this);
  //controlP5.addSlider("speed")
  //  .setPosition(850, 50)
  //  .setRange(1, 20);

  //controlP5 = new ControlP5(this);
  //controlP5.addSlider("count2")
  //  .setPosition(850, 100)
  //  .setRange(1, 100);

  //controlP5 = new ControlP5(this);
  //controlP5.addSlider("angleAll")
  //  .setPosition(850, 150)
  //  .setRange(0, 2*PI);
  
  
  //---------------calling each objects seperately
  //Dial d = dials.get(0);
  //Dial d2 = dials.get(1);
  //Dial d3 = dials.get(2);
  //Dial d4 = dials.get(3);
  //Dial d5 = dials.get(4);
  //Dial d6 = dials.get(5);
  //Dial d7 = dials.get(6);
  //Dial d8 = dials.get(7);
  //Dial d9 = dials.get(8);
  //Dial d10 = dials.get(9);
  //Dial d11 = dials.get(10);
  //Dial d12 = dials.get(11);
  //Dial d13 = dials.get(12);
  //Dial d14 = dials.get(13);
  //Dial d15 = dials.get(14);
  //Dial d16 = dials.get(15);



  //Obstacle o = obstacles.get(0);
  //Obstacle o2 = obstacles.get(1);
  //Obstacle o3 = obstacles.get(2);
  //Obstacle o4 = obstacles.get(3);
  //Obstacle o5 = obstacles.get(4);
  //Obstacle o6 = obstacles.get(5);
  //Obstacle o7 = obstacles.get(6);
  //Obstacle o8 = obstacles.get(7);
  //Obstacle o9 = obstacles.get(8);
  //Obstacle o10 = obstacles.get(9);
  //Obstacle o11 = obstacles.get(10);
  //Obstacle o12 = obstacles.get(11);
  //Obstacle o13 = obstacles.get(12);
  //Obstacle o14 = obstacles.get(13);
  //Obstacle o15 = obstacles.get(14);
  //Obstacle o16 = obstacles.get(15);
  
  //o.display();
  //o2.display();
  //o3.display();
  //o4.display();
  //o5.display();
  //o6.display();
  //o7.display();
  //o8.display();
  //o9.display();
  //o10.display();
  //o11.display();
  //o12.display();
  //o13.display();
  //o14.display();
  //o15.display();
  //o16.display();

  //o.tick();
  //o2.tick();
  //o3.tick();
  //o4.tick();
  //o5.tick();
  //o6.tick();
  //o7.tick();
  //o8.tick();
  //o9.tick();

  //d.display();
  //d2.display();
  //d3.display();
  //d4.display();
  //d5.display();
  //d6.display();
  //d7.display();
  //d8.display();
  //d9.display();
  //d10.display();
  //d11.display();
  //d12.display();
  //d13.display();
  //d14.display();
  //d15.display();
  //d16.display();




}