

ArrayList<Clock> clocks = new ArrayList<Clock>();
int col;
color[] colarray = new color[8];


float xoff = 0;

void setup() {
  size(600, 500, P3D);
  //randomSeed(100);
  colorMode(HSB, 360, 100, 100);


  //colarray[1] = color(0,0,0);
  //colarray[2] = color(0,0,0);
  //colarray[3] = color(0,0,0);
  //colarray[4] = color(0,0,0);
  //colarray[5] = color(0,0,0);
  //colarray[6] = color(0,0,0);
  //colarray[7] = color(0,0,0);
  
  
}
void draw() {
  background(0, 0, 100);


  //colarray[0] = color(random(0, 360), random(0,100), 100);
  //colarray[1] = color(random(0, 360), random(0,100), 100);
  //colarray[2] = color(random(0, 360), random(0,100), 100);
  //colarray[3] = color(random(0, 360), random(0,100), 100);
  //colarray[4] = color(random(0, 360), random(0,100), 100);
  //colarray[5] = color(random(0, 360), random(0,100), 100);
  //colarray[6] = color(random(0, 360), 100, 100);
  //colarray[7] = color(random(0, 360), 100, 100);


  col = color(colarray[(int)random(0, 8)]);
  clocks.add(new Clock(300, 250, col)); 
  col = color(colarray[(int)random(0, 8)]);
  clocks.add(new Clock(300, 250, col)); 
  col = color(colarray[(int)random(0, 8)]);
  clocks.add(new Clock(300, 250, col)); 
  col = color(colarray[(int)random(0, 8)]);
  clocks.add(new Clock(300, 250, col)); 
  col = color(colarray[(int)random(0, 8)]);
  clocks.add(new Clock(300, 250, col)); 
  col = color(colarray[(int)random(0, 8)]);
  clocks.add(new Clock(300, 250, col)); 
  col = color(colarray[(int)random(0, 8)]);
  clocks.add(new Clock(300, 250, col)); 
  col = color(colarray[(int)random(0, 8)]);
  clocks.add(new Clock(300, 250, col)); 
  col = color(colarray[(int)random(0, 8)]);
  clocks.add(new Clock(300, 250, col)); 


  Clock clock1 = clocks.get(0);
  Clock clock2 = clocks.get(1);
  Clock clock3 = clocks.get(2);
  Clock clock4 = clocks.get(3);
  Clock clock5 = clocks.get(4);
  Clock clock6 = clocks.get(5);
  Clock clock7 = clocks.get(6);
  Clock clock8 = clocks.get(7);


  //for (int i = 120; i>0; i-=40) {
  clock1.update(160);
  clock2.update(150);
  clock3.update(140);
  clock4.update(130);
  clock5.update(120);
  clock6.update(110);
  clock7.update(100);
  clock8.update(90);

  //clock1.display();
  // clock2.display();
  // clock3.display();
  // clock4.display();
  if(keyPressed){
   int random;
   for (int i=0; i<8; i++) {
     random = int(random(8));
     color temp = colarray[i];
     colarray[i] = colarray[random];
     colarray[random] = temp;
   }
  }

  for (Clock clocksAll : clocks) {
    //clocksAll.update();
    clocksAll.display();

  }


  //Clock clock1 = clocks.get(0);
  //Clock clock2 = clocks.get(1);
  //Clock clock3 = clocks.get(2);
  //Clock clock4 = clocks.get(3);
}