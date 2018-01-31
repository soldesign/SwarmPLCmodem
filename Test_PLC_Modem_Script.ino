
#include <SNAP.h>               //import snap             
const int buttonPin = 9;        // the pin that the Button is attached to
const int pinhdc=11;            // set pin that activates command mode for sig 60
const int pinsleep=10;          // set pin that activates/deactivates sleeep mode for sig 60
int buttonState = 0;            // Button state variable
int limit=8;                    //maximum packet size

SoftwareSerial ssig60 (13,12);  //define software serial for com with SIG60 (RX-HDO,TX-HDI)
SoftwareSerial ssolbox (3,2);   //define softare serial for com with solbox(RX-solTX,TX-solRX)

void setup() {  
  // put your setup code here, to run once:
  snap.begin(19200);            // initialize snap
  snap.addDevice(84);           // add associated address
  pinMode(buttonPin, INPUT);    // define pin mode for send trigger button as INPUT
  pinMode(pinhdc, OUTPUT);      // define pin mode for command mode as OUTPUT 
  pinMode(pinsleep, OUTPUT);    // define pin mode for sleep mode as OUTPUT
  //portOne.begin(19200);         //initialize software serial
  //portOne.println("Setup Done");
}

void loop() {
  // put your main code here, to run repeatedly:  
  buttonState = digitalRead(buttonPin);                     //read button pin
  if (buttonState == HIGH) {                                //if button is pressed send message
    int k=0;                                                //initialize k for maximum packet size detection
    //delay(1000);                                          //wait for a bit
    snap.startMessage(byte (84),byte (82));                 //create header
    for (int i=0;i<TheShortMessage.length();i++){           //iterate throug every byte sof the message
      snap.sendDataByte(byte (TheShortMessage.charAt(i)));  //submit byte for protocol processing
      k++;                                                  //count number of processed bytes
      if (k > limit){                                       //if number of processed bytes is bigger then the limit
        snap.sendMessage();                                 //wrap it up and send the packet
        delay (1000);                                       //wait for a bit
        snap.startMessage(byte (84),byte (82));             //create a new header for the next packet
        k=0;                                                //reset byte counter
        }
      }
    snap.sendMessage();                                     //wrap it up and send packet
    k=0;                                                    //reset byte counter
    } 
  //delay(200);
  snap.receivePacket();                           //listen for data
  if (snap.packetReady()){                        //if something valid was received and processed
    String output="";                             //define output string
    for (int j=0;j<snap.getPacketSize();j++){     //iterate through the processed bytes and add to the string
      output += char (snap.getByte(j));          
    }
    snap.releaseLock();                           //free the cache for new data
    portOne.println("Received: ");                //print received:
    portOne.println(output);                      //print received data
    if (output=="Hello"){                          //if message is Hello send back Hi
      snap.startMessage(byte(82),byte(84));
      for (int i=0;i<TheShortAnswer.length();i++){
        snap.sendDataByte(byte (TheShortAnswer.charAt(i)));
      }
      snap.sendMessage();
    }
  }  
}
