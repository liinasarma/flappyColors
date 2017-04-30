#pragma once

#include "ofMain.h"
#include "ofEvents.h"
#include <vector>
#include <deque>
#include "Ring.hpp"

class ofApp : public ofBaseApp{

	public:
		void setup();
		void update();
		void draw();

		void keyPressed(int key);
		void keyReleased(int key);
		void mouseMoved(int x, int y );
		void mouseDragged(int x, int y, int button);
		void mousePressed(int x, int y, int button);
		void mouseReleased(int x, int y, int button);
		void mouseEntered(int x, int y);
		void mouseExited(int x, int y);
		void windowResized(int w, int h);
		void dragEvent(ofDragInfo dragInfo);
		void gotMessage(ofMessage msg);
    
    
        void colorChecking(int _col);
    
        vector<Ring> rings;
        int col;
         bool note1, note2, note3, note4;

        ofColor c1,c2,c3,c4,c5,c6,c7;

    
    
 //Arduino functions and variables
    
    ofArduino	ard;
    bool		bSetupArduino;
    void step(long steps);
    
    int dirPin = 3;
    int stepPin = 2;
    bool playing;
    
private:
    
    void setupArduino(const int & version);
    void digitalPinChanged(const int & pinNum);
    void analogPinChanged(const int & pinNum);
    void updateArduino();
    
    string buttonState;
    string potValue;
    


		
};
