#pragma once

#include "ofMain.h"

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
    // Arduino specific functions
    void setupArduino();
    void updateArduino();
    
    ofArduino	ard;
    // flag variable for setting up arduino once
    bool		bSetupArduino;
    int dirPin = 3;
    int stepPin = 2;
    void step(long steps);
		
};
