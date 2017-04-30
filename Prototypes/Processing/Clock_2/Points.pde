class Dial {

  int x, y, speed2, w;



  Dial(int _x, int _y) {

    x = _x;
    y = _y;

  }

  void display() {

    pushMatrix();
    translate(x, y);
    rotate(radians(angle));
    beginShape();
    vertex(x,y);
    endShape();
    //if (keyPressed) {
    //  angle+=deg;
    //}

    popMatrix();
  }
}