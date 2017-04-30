#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    ard.connect("/dev/cu.usbmodem1411", 57600);
    
    // flag so we setup arduino when its ready, you don't need to touch this :)
    bSetupArduino	= false;

}

//--------------------------------------------------------------
void ofApp::update(){
    
    // setupArduino() is called once in the begining, which is aligned setup() in Arduino code in general.
    // updateArduino() is called repeadedly as Arduino code has loop().
    // You don't need to touch this.
    if ( ard.isArduinoReady()){
        // 1st: setup the arduino if haven't already:
        if (bSetupArduino == false){
            setupArduino();
            bSetupArduino = true;	// only do this once
        }
        // 2nd do the update of the arduino
        updateArduino();
    }
    
    
}

//--------------------------------------------------------------
void ofApp::setupArduino(){
    
    ard.sendDigitalPinMode(11, ARD_OUTPUT);
    ard.sendDigitalPinMode(dirPin, ARD_OUTPUT);
    ard.sendDigitalPinMode(stepPin, ARD_OUTPUT);
}

//--------------------------------------------------------------
void ofApp::updateArduino(){
    //Get the latest condition of Arduino.
    //You don't need to touch this.
    ard.update();
    
    ard.sendDigital(11, ARD_HIGH);
    ard.sendDigitalPinMode(dirPin, ARD_OUTPUT);
    ard.sendDigitalPinMode(stepPin, ARD_OUTPUT);
    //Write code here.
//    ard.sendDigitalPinMode(11, ARD_OUTPUT);
//    ard.sendPwm(11, 255,true);
  //  ard.sendDigital(11, ARD_HIGH);
    for (int i = 0; i<4000; i++)       //Iterate for 4000 microsteps
    {
        
        ard.sendDigital(dirPin, ARD_LOW);  // clockwise
        ofSleepMillis(1000);
        step(1500);            // perform 200 steps
        ofSleepMillis(1000);
        ard.sendDigital(dirPin, ARD_HIGH);   // anti-clockwise
        ofSleepMillis(100);
        step(2000);
    }

}
void ofApp::step(long steps) {
    for (long i=0; i < steps; i++) {
        ard.sendDigital(stepPin, ARD_LOW);
       // ard.digitalWrite(stepPin, LOW);
        
        
        ofSleepMillis(1000);
        ard.sendDigital(stepPin, ARD_HIGH);
        ofSleepMillis(1000);
        // delayMicroseconds(DELAY);
    }
    // Set the pin low before we end
    ard.sendDigital(stepPin, ARD_LOW);
}



//--------------------------------------------------------------
void ofApp::draw(){

}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
    switch (key) {
        case OF_KEY_RIGHT:
            // rotate servo head to 180 degrees
            //ard.sendServo(9, 180, false);
            ard.sendDigital(11, ARD_HIGH);  // pin 20 if using StandardFirmata from Arduino 0022 or older
            
            
            break;
        case OF_KEY_LEFT:
            // rotate servo head to 0 degrees
            //ard.sendServo(9, 0, false);
            ard.sendDigital(11, ARD_LOW);  // pin 20 if using StandardFirmata from Arduino 0022 or older
            break;
        default:
            //ard.sendDigital(11, ARD_HIGH);
            break;
    }
    


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
