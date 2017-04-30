class Dial {

  int x, y, speed2, w;
  float angle;
  PVector location;
  color col;
  boolean turn;

  Dial(int _x, int _y, int _speed, float _angle, PVector _location, color _col, int _w ) {
    w = _w;
    x = _x;
    y = _y;
    location = _location;
    speed2 =  _speed;
    angle = _angle;
    col = _col;
  }

  void display() {
   
    pushMatrix();
    translate(x, y);
    rotate(radians(angle));

    stroke(255);
    line(location.x, location.y, location.x+50, location.x+50);
    stroke(col);
    noFill();
    ellipse(location.x, location.y, w, w);

    if(keyPressed){
    angle+=deg;
    
    }

    popMatrix();
  }

  void tick() {
    m = millis()-start;
    if (m>=2000) {

      tick.trigger();
      
      start = millis();
    }
  }
}