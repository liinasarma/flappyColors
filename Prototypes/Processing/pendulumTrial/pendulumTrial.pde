float centerX, centerY;
float rad, ang;
float w = 20;

void  setup()
{
  size(1200, 700, P3D);
  
  
}
 void draw()
 {
 background(0);

 
 
 //rad = PI/2;
 
 ang= radians(5/4*PI);
 
 //ang = radians(rad);
 stroke(255);
 

 pushMatrix();
 
// translate( 


centerX = sin(ang)*100;
centerY = cos(ang)*100;

ang-=0.1;
if(ang<7/4*PI){
  
  
 line(width/2, height/2,centerX,centerY);
 ellipse(centerX, centerY, w,w);


}
popMatrix();
 
 
 
 
 }
