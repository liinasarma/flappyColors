
float angle = PI*2;
float deg = 10; 

ArrayList<Dial> dials = new ArrayList<Dial>();
int[] x = new int[50];
int[] y = new int[50];


void setup(){
size(1000,800, P3D);


for (int i = 0; i < x.length; i++){
x[i] = 0;
y[i] = 0;
}
}
void draw(){
background(0);

for (int i = 0; i < x.length-1; i++) {
  x[i] = x[i+1];
  y[i] = y[i+1];
}

//x[x.length–1] = mouseX;
//y[y.length–1] = mouseY;


for (int i = 0; i < x.length; i++) {
 //noStroke();
 //fill(255-i*5);
 fill(255);
 strokeWeight(5);
dials.add(new Dial(x[i],y[i]));

  for (Dial dAll : dials) {
    dAll.display();

  }
}
}