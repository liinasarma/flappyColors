//Dials_2 - Work In progress for Creative Projects2

//-----imported libraries and their variables
//import controlP5.*;
//ControlP5 controlP5;
//Test t; 


import ddf.minim.*;
Minim minim;
AudioSample tick;
//public int sliderValue = 40;
//FFT fft;

//--------Array Lists for objects
ArrayList<Dial> dials = new ArrayList<Dial>();
ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();

//--------Other global variables

//------ints
int deg = 180; 
int speed1 = 2;
int speed2 = 5; 
int speed3 = 10; 
int speed4 = 20; 
int speed5 = 3; 
int count2 = 10;
int w1 = 100; 
int w2 = 30;
int w3 = 50;
int w4 = 70;
int start;
int m;

//----floats
float angleAll = -45;
float radiusAll;
float angleNew = 90;
float angle1 = 135;
float angle2 = -45;
float angle3 = 135;
float angle4 = -45;

//----vectors
PVector loc = new PVector(0, 0);
PVector pos = new PVector(0, 0);

//----colors
color c1 = color(255, 255, 204);
color c2 = color(204, 255, 204);
color c3 = color(204, 229, 255);
color c4 = color(255, 204, 229);

void setup() {

  size(600, 600);
  
  frameRate(10);
  start = millis();


  //----------------controller library
  //controlP5 = new ControlP5( this );
  //t = new Test( "test" );

  //---------------sound library
  minim =  new Minim(this); 
  tick = minim.loadSample("tick.mp3"); 
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


  //adding elements to the array lists
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

  dials.add(new Dial(100, 100, deg, angle1, loc, c1, w1));
  dials.add(new Dial(200, 100, deg, angle2, loc, c2, w2));
  dials.add(new Dial(300, 100, deg, angle3, loc, c3, w3));
  dials.add(new Dial(400, 100, deg, angle4, loc, c4, w4));
  dials.add(new Dial(500, 100, deg, angle1, loc, c2, w2));
  dials.add(new Dial(100, 200, deg, angle2, loc, c1, w1));
  dials.add(new Dial(200, 200, deg, angle3, loc, c4, w4));
  dials.add(new Dial(300, 200, deg, angle4, loc, c3, w3));
  dials.add(new Dial(400, 200, deg, angle1, loc, c4, w4));
  dials.add(new Dial(500, 200, deg, angle2, loc, c3, w3));
  dials.add(new Dial(100, 300, deg, angle3, loc, c2, w2));
  dials.add(new Dial(200, 300, deg, angle4, loc, c1, w1));
  dials.add(new Dial(300, 300, deg, angle1, loc, c1, w1));
  dials.add(new Dial(400, 300, deg, angle2, loc, c2, w2));
  dials.add(new Dial(500, 300, deg, angle3, loc, c3, w3));
  dials.add(new Dial(100, 400, deg, angle4, loc, c4, w4));
  dials.add(new Dial(200, 400, deg, angle1, loc, c4, w4));
  dials.add(new Dial(300, 400, deg, angle2, loc, c3, w3));
  dials.add(new Dial(400, 400, deg, angle3, loc, c2, w2));
  dials.add(new Dial(500, 400, deg, angle4, loc, c1, w1));
  dials.add(new Dial(100, 500, deg, angle1, loc, c1, w1));
  dials.add(new Dial(200, 500, deg, angle2, loc, c2, w2));
  dials.add(new Dial(300, 500, deg, angle3, loc, c3, w3));
  dials.add(new Dial(400, 500, deg, angle4, loc, c4, w4));
  dials.add(new Dial(500, 500, deg, angle4, loc, c4, w4));
}

void draw() {

  background(0, 0, 0);


  //----------member functions initialised

  for (Dial dAll : dials) {
    dAll.display();
    dAll.tick();
  }

  //for (Obstacle oAll : obstacles) {
  //oAll.display();
  //}


  //---------------copypaste for further use 


  //player.play();
  //player.loop();
  //fft.forward( player.mix );


  //--------calling each objects seperately
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