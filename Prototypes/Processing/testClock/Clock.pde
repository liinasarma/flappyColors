import java.util.ArrayDeque;

class Clock {

  int x, y, speed2, w;
  float radius; 
  float angle;
  float endX, endY;
  ArrayDeque<PVector> q = new ArrayDeque<PVector>();

  Clock(int _x, int _y) {

    x = _x;
    y = _y;
    //points.pushFront(x,y);
  }
  void update(float r) {
    radius = r;
    angle+=0.5;
    endX = 0+(radius*cos(radians(angle)));
    endY = 0+(radius*sin(radians(angle)));
    q.addLast(new PVector(endX, endY));
    if (angle>360) 
    q.removeFirst();
    println(q.size());
  }

  void display() {
//Object[] v = q.toArray();
    pushMatrix();
    translate(x, y);
    beginShape();
    for (PVector v : q) {
      
      vertex(v.x, v.y); 
    }
    endShape();
    
    
    //rotate(radians(angle));
    //beginShape();
    //vertex(x,y);
    //endShape();

    line(0, 0, endX, endY);
    popMatrix();
  }
}