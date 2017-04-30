Clock c;
float xoff = 0;

void setup() {
  size(600, 500);
  c = new Clock(300,250); 
}
void draw() {
  background(255);
  c.update(100 + noise(xoff)*100);
  c.display();
  xoff+=0.01;
}