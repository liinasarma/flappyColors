class Dial {
  int x, y;
  float speed2;
  float angle;
  PVector location;


  Dial(int _x, int _y, float _speed, float _angle, PVector _location ) {

    x = _x;
    y = _y;
    location = _location;
    speed2 =  _speed;
    angle = _angle;
  }

  void display() {


    pushMatrix();
    translate(x, y);    
    rotate(radians(angle));

    stroke(255);
    strokeWeight(1);


    line(location.x, location.y, location.x+50, location.y+50);
    
    
    //location = new PVector(i,i);
    //location.mult(0.1);
    //point(location.x, location.y);
    //line(location.x, location.y, (player.left.get(n))*100, (player.left.get(n))*100);

    angle+=speed2;
    popMatrix();
  }
}