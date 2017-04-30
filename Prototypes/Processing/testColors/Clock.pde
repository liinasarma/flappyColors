import java.util.ArrayDeque;

class Clock {

  int x, y, speed2, w;
  float radius; 
  float angle;
  float endX, endY;
  ArrayDeque<PVector> q = new ArrayDeque<PVector>();
  color c;
  int b;
  
  float speed;

  Clock(int _x, int _y, color _c) {

    x = _x;
    y = _y;
   c = _c;
   speed = random(-2, 2);
   
   c = color(random(0, 360), random(0,100), 100);

  }
  void update(float r) {

    //c = color(colarray[(int)random(0, 4)]);
    radius=r;
    angle+=speed;
    
    //for(int radius = 0; radius<120; radius+=40){
    endX = 0+(radius*cos(radians(angle)));
    endY = 0+(radius*sin(radians(angle)));
    radius+=40;
    q.addLast(new PVector(endX, endY));
    
    if (angle>361 || angle<-361){
      //speed = random(-2,2);
    q.removeFirst();

    //c = c+1;
    
    }

  }

  void display() {
//Object[] v = q.toArray();

    pushMatrix();
    translate(x, y);
    beginShape();
      //c = color(colarray[(int)random(0, 4)]);
    stroke(c);
    strokeWeight(3);
    for (PVector v : q) {
      
      vertex(v.x, v.y); 
    }
    endShape();
    
    
    //rotate(radians(angle));
    //beginShape();
    //vertex(x,y);
    //endShape();

    //line(0, 0, endX, endY);
    popMatrix();
  }
  
}