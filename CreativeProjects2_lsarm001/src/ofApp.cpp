#include "ofApp.h"

Ring * r1;
Ring * r2;
Ring * r3;
Ring * r4;
Ring * r5;
Ring * r6;

//--------------------------------------------------------------
void ofApp::setup(){
    ofSetBackgroundColor(255,255,255);
    
    ofEnableSmoothing();
    

//Color variables initialised
    c1.setHsb(ofRandom(0,255),255,255);
    c2.setHsb(ofRandom(0,255),255,255);
    c3.setHsb(ofRandom(0,255),255,255);
    c4.setHsb(ofRandom(0,255),255,255);
    c5.setHsb(ofRandom(0,255),255,255);
    c6.setHsb(ofRandom(0,255),255,255);
    
    
//The color Rings members
    rings.push_back(Ring(90,c1, 0.03));
    rings.push_back(Ring(145,c2,-0.05));
    rings.push_back(Ring(190,c3,0.06));
    rings.push_back(Ring(235,c4,-0.09));
    rings.push_back(Ring(280,c5,0.05));
    rings.push_back(Ring(325,c6,0.04));
    
    
    ofSetVerticalSync(true);
   // ofSetFrameRate(60);

    

    
//Arduino connect with the appropriate port
    ard.connect("/dev/tty.usbmodem1421", 57600);
    
    // listen for EInitialized notification. this indicates that
    // the arduino is ready to receive commands and it is safe to
    // call setupArduino()
    ofAddListener(ard.EInitialized, this, &ofApp::setupArduino);
    bSetupArduino	= false;	// flag so we setup arduino when its ready, you don't need to touch this :)
    


    
    
    
}

//--------------------------------------------------------------
void ofApp::update(){
    
updateArduino();

    
}
void ofApp::setupArduino(const int & version) {
    
    // remove listener because we don't need it anymore
    ofRemoveListener(ard.EInitialized, this, &ofApp::setupArduino);
    
    // it is now safe to send commands to the Arduino
    bSetupArduino = true;
    
    // print firmware name and version to the console
//    ofLogNotice() << ard.getFirmwareName();
//    ofLogNotice() << "firmata v" << ard.getMajorFirmwareVersion() << "." << ard.getMinorFirmwareVersion();
    //Pins that Ill be using for the floppy drives, Pin 11 is for testing LED
    ard.sendDigitalPinMode(11, ARD_OUTPUT);
    ard.sendDigitalPinMode(2, ARD_OUTPUT);
    ard.sendDigitalPinMode(3, ARD_OUTPUT);
    ard.sendDigitalPinMode(4, ARD_OUTPUT);
    ard.sendDigitalPinMode(5, ARD_OUTPUT);
    ard.sendDigitalPinMode(6, ARD_OUTPUT);
    ard.sendDigitalPinMode(7, ARD_OUTPUT);
    ard.sendDigitalPinMode(8, ARD_OUTPUT);
    ard.sendDigitalPinMode(9, ARD_OUTPUT);
    
    // Listen for changes on the digital and analog pins
    ofAddListener(ard.EDigitalPinChanged, this, &ofApp::digitalPinChanged);
    ofAddListener(ard.EAnalogPinChanged, this, &ofApp::analogPinChanged);

}

//--------------------------------------------------------------
void ofApp::updateArduino(){

    ard.update();
    

 //if true play floppy one and so on
//notes triggered by output color

    if(note1 ==true){
        

    ard.sendDigital(2, ARD_LOW);
    ofSleepMillis(10);
        
        
    ard.sendDigital(2,ARD_HIGH);
    ofSleepMillis(10);
    //ard.sendDigital(11, ARD_LOW);
        ard.sendDigital(dirPin, ARD_LOW);
        //        // delay(1);
                ofSleepMillis(10);
        //        step(100);            // perform 200 steps
        //        ofSleepMillis(1);
        //        //ard.sendDigital(dirPin, ARD_HIGH);   // anti-clockwise
                ard.sendDigital(dirPin, ARD_HIGH);
                ofSleepMillis(10);
        //        step(100);


        note1 = false;
    
    
}
    if(note2 ==true){
        
        
        ard.sendDigital(4, ARD_HIGH);
        ofSleepMillis(1);
        
        
        ard.sendDigital(4,ARD_LOW);
        ofSleepMillis(1);
        //ard.sendDigital(11, ARD_LOW);
        ard.sendDigital(5, ARD_LOW);
        //        // delay(1);
        ofSleepMillis(1);

        ard.sendDigital(5, ARD_HIGH);
        ofSleepMillis(1);
        //        step(100);
        
        
        note2 = false;
        
        
    }
    if(note3 ==true){
        
        ard.sendDigital(6, ARD_LOW);
        ofSleepMillis(10);
        ard.sendDigital(6,ARD_HIGH);
        ofSleepMillis(10);
        //ard.sendDigital(11, ARD_LOW);
        ard.sendDigital(7, ARD_LOW);
        //        // delay(1);
        ofSleepMillis(1);
        ard.sendDigital(7, ARD_HIGH);
        ofSleepMillis(1);
        //        step(100);
        
        
        note3 = false;
        
        
    }
    if(note4 ==true){

        ard.sendDigital(8, ARD_LOW);
        ofSleepMillis(10);
        
        
        ard.sendDigital(8,ARD_HIGH);
        ofSleepMillis(10);
        ard.sendDigital(9, ARD_LOW);
        ofSleepMillis(1);
        ard.sendDigital(9, ARD_HIGH);
        ofSleepMillis(1);
        //        step(100);
        
        
        note4 = false;
        
        
    }


}
    void ofApp::digitalPinChanged(const int & pinNum) {
        // do something with the digital input. here we're simply going to print the pin number and
        // value to the screen each time it changes
        buttonState = "digital pin: " + ofToString(pinNum) + " = " + ofToString(ard.getDigital(pinNum));
    }
    
    // analog pin event handler, called whenever an analog pin value has changed
    
    //--------------------------------------------------------------
    void ofApp::analogPinChanged(const int & pinNum) {
        // do something with the analog input. here we're simply going to print the pin number and
        // value to the screen each time it changes
        potValue = "analog pin: " + ofToString(pinNum) + " = " + ofToString(ard.getAnalog(pinNum));
    }


// function for defining the steps
void ofApp::step(long steps) {
    for (long i=0; i < steps; i++) {
        ard.sendDigital(stepPin, ARD_LOW);
        // digitalWrite(step_pin, LOW);
        
        
        ofSleepMillis(10);
        //ard.sendPwm(stepPin, ARD_HIGH);
        ard.sendDigital(stepPin,ARD_HIGH);
        ofSleepMillis(10);
        // delayMicroseconds(DELAY);
    }
    // Set the pin low before we end
    ard.sendDigital(stepPin, ARD_LOW);
    // ard.sendDigital(stepPin, ARD_LOW);
}

//--------------------------------------------------------------
void ofApp::draw(){
    
    r1 = &rings[0];
    r2 = &rings[0];
    r3 = &rings[0];
    r4 = &rings[0];
    r5 = &rings[0];
    r6 = &rings[0];
    
    
    
    
    for (auto & ring : rings){
        
        ring.update();
        ring.display();
        ring.changeColor();
        
        
        
    }
    
    
    int c1 = r1->h;
    int c2 = r2->h;
    int c3 = r3->h;
    int c4 = r4->h;
    int c5 = r5->h;
    int c6 = r6->h;
    
    
    
    int sumCol = c1+c2+c3+c4+c5+c6;
    
    int avgCol = sumCol/5;
    
    //cout << avgCol<< endl;
    colorChecking(avgCol);
}
void ofApp::colorChecking(int col){
    
    cout << col<< endl;
    
    // For checking the first color
    //Check Red
    if(col<30 | col>330){
//        cout << "red"<< endl;
       note1 = true;

        
    }
    //Check Yellow
    if(col>30 && col<90){
        cout << "yellow"<< endl;
        // ard.sendPwm(11, 0);
        note1 = true;
        
    }
    //Check Green
    if(col>90 && col<150){
       // cout << "green"<< endl;
        note1 = true;
        

    }
    //Check Cyan
   if(col>150 && col<210){
        cout << "cyan"<< endl;
       note1 = true;
       
    }
    //Check Blue
    if(col>210 && col<270){
        note1 = true;        
    }
    //Check Magenta
    if(col>270 && col<330){
        cout << "magenta"<< endl;
        
        note1 = true;
    }

    
    
    
    
}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
    
    
    


}

//--------------------------------------------------------------
void ofApp::keyReleased(int key){

}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){

}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseEntered(int x, int y){

}

//--------------------------------------------------------------
void ofApp::mouseExited(int x, int y){

}

//--------------------------------------------------------------
void ofApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void ofApp::dragEvent(ofDragInfo dragInfo){ 

}
