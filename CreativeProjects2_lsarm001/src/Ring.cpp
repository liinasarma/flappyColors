
#include "Ring.hpp"
Ring::Ring(float _radius, ofColor _c,float _speed): radius(_radius),c(_c), speed(_speed)
{
    

    
    y = ofGetWindowHeight()/2;
    x = ofGetWindowWidth()/2;

    
}



void Ring::update() {
    
    
    //radius=r;
    
    angle+=speed;
    endX = x+(radius*cos(ofWrapDegrees(angle)));
    endY = y+(radius*sin(ofWrapDegrees(angle)));
    
    

    
    q.push_back(ofPoint(endX, endY));

    if(q.size() > 320){
        

        q.clear();
        change =true;
        
        
        
    }
    
    
    
}

//changes the hsb color

void Ring::changeColor(){
    
    if(change == true){
        c.setHsb(ofRandom(0,255),255,255);
        ofSetColor(c);
        change=false;
        h = c.getHue();
    }
    
    return h;
    
}

//displays by pixel adding one
void Ring::display() {
    

    
    glPushMatrix();
    
    glBegin(GL_LINE_STRIP);
    glTranslatef(x, y,0);
    glEnable(GL_LINE_SMOOTH);
    glLineWidth(10);
    glPointSize(20);
    
    
    ofSetColor(c);
    ofFill();
    

    
    
    for (auto v : q)
    {

        glVertex2f(v.x,v.y);
        //ofVertex(v.x, v.y);
        
    }
    
    
    
    glEnd();
    glPopMatrix();
}

