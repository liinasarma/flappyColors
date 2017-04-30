class Obstacle {

  int centerX;
  int centerY;
  int radius;
  int count;
  float radius2;
  PVector position;


  Obstacle(int _centerX, int _centerY, int _count, int _radius, PVector _position) {

    centerX = _centerX;
    centerY = _centerY;
    count = _count;
    radius = _radius;  
    radius2 = radius * 0.72;
    position = _position;
  }

  void display() {



    pushMatrix();
    translate(centerX, centerY);
    for (int a = 0; a < 360; a+=count) {
      float angle = radians(a);

      position.x = cos(angle) * radius;
      position.y = sin(angle) * radius;
      noFill();
      smooth();
      stroke(255,60);
      ellipse(position.x, position.y, 5, 5);

    }
    popMatrix();
  }

  void keyPressed() {

    if (key==CODED) {
      if (keyCode ==UP) {
        count++;
      }
      if (keyCode==DOWN) {
        count--;
      }
    }
  }
  void tick() {

    m = millis()-start;
    if (m%count == 0) {
      count+=1;
      tick.trigger();
      start = millis();
    }
  }
}