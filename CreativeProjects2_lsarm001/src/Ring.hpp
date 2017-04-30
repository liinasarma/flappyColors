//
//  Ring.hpp
//  CreativeProjects2_lsarm001
//
//  Created by Lina  Sarma on 05/06/16.
//
//

#ifndef Ring_hpp
#define Ring_hpp

#include <stdio.h>
#include "ofMain.h"
class Ring{

    
public:
    ofColor c;
    int h;
    float x = 500;
    float y = 500;
    Ring(float _radius,ofColor _c, float _speed);
    // Methods
    // int x,y;
    int speed2, w;
    float radius;
    float angle;
    ofMesh mesh;
    GLfloat endX, endY;
    vector<ofVec2f> q;
    //deque<glVertex2f> q;
    //deque<vector> q(5);
    //ofColor c;
    int b;
    bool change = false;
    
    float speed;
    
public:
    void update();
    void display();
    void changeColor();
    float cols () {return h;}
    //void keyPressed(int key);
    
    
};


#endif /* Ring_hpp */
