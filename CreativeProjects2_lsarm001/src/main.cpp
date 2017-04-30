#include "ofMain.h"
#include "ofApp.h"

//========================================================================
int main( ){
	ofSetupOpenGL(1300,784,OF_WINDOW);			// <-------- setup the GL context

	// this kicks off the running of my app
	// can be OF_WINDOW or OF_FULLSCREEN
	// pass in width and height too:
	ofRunApp(new ofApp());
//    ofGLWindowSettings settings;
//    settings.width = 600;
//    settings.height = 600;
//    settings.setPosition(ofVec2f(300,0));
//    auto mainWindow = ofCreateWindow(settings);
//    
//    settings.width = 300;
//    settings.height = 300;
//    settings.setPosition(ofVec2f(0,0));
//    auto guiWindow = ofCreateWindow(settings);
//    
//    auto mainApp = make_shared<ofApp>();
//    auto guiApp = make_shared<ofApp>();
//    
//    ofRunApp(guiWindow, guiApp);
//    ofRunApp(mainWindow, mainApp);
//    ofRunMainLoop();

}
