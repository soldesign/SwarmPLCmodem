
const int buttonPin3 = 3;        // the pin that the Button is attached to [00000000] [0x00]
const int buttonPin4 = 4;        // the pin that the Button is attached to [00000001] [0x01] alt. [0xAA]
const int buttonPin5 = 5;        // the pin that the Button is attached to [00000010] [0x02]
const int buttonPin6 = 6;        // the pin that the Button is attached to [00000100] [0x04]
const int buttonPin7 = 7;        // the pin that the Button is attached to [00001000] [0x08]
const int buttonPin8 = 8;        // the pin that the Button is attached to [00010000] [0x10]
const int buttonPin9 = 9;        // the pin that the Button is attached to [00100000] [0x20]
const int buttonPin10 = 10;       // the pin that the Button is attached to [01000000] [0x40]
const int buttonPin11 = 11;       // the pin that the Button is attached to [10000000] [0x80]
const int buttonPin12 = 12;      // the pin that the Button is attached to [11111111] [0xFF]


int buttonState = 0;            // Button state variable


void setup() {
  pinMode(buttonPin3, INPUT);    //define pin for send button
  pinMode(buttonPin4, INPUT);    //define pin for send button
  pinMode(buttonPin5, INPUT);    //define pin for send button
  pinMode(buttonPin6, INPUT);    //define pin for send button
  pinMode(buttonPin7, INPUT);    //define pin for send button
  pinMode(buttonPin8, INPUT);    //define pin for send button
  pinMode(buttonPin9, INPUT);    //define pin for send button
  pinMode(buttonPin10, INPUT);    //define pin for send button
  pinMode(buttonPin11, INPUT);    //define pin for send button
  pinMode(buttonPin12, INPUT);   //define pin for send button
  
  Serial.begin(19200);
}

void loop() {

  buttonState = digitalRead(buttonPin3);                     //read button pin
  if (buttonState == HIGH) {                                 //send hex value for 00000000
    Serial.write(0x00);
    delay(1000);
    } 

  buttonState = digitalRead(buttonPin4);                     //read button pin
  if (buttonState == HIGH) {                                 //send hex value for 00000001
    Serial.write(0xAA);
    delay(1000);
    } 

  buttonState = digitalRead(buttonPin5);                     //read button pin
  if (buttonState == HIGH) {                                 //send hex value for 00000010
    Serial.write(0x02);
    delay(1000);
    } 

  buttonState = digitalRead(buttonPin6);                     //read button pin
  if (buttonState == HIGH) {                                 //send hex value for 00000100
    Serial.write(0x04);
    delay(1000);
    }

  buttonState = digitalRead(buttonPin7);                     //read button pin
  if (buttonState == HIGH) {                                 //send hex value for 00001000
    Serial.write(0x08);
    delay(1000);
    } 

  buttonState = digitalRead(buttonPin8);                     //read button pin
  if (buttonState == HIGH) {                                 //send hex value for 00010000
    Serial.write(0x10);
    delay(1000);
    } 

  buttonState = digitalRead(buttonPin9);                     //read button pin
  if (buttonState == HIGH) {                                 //send hex value for 00100000
    Serial.write(0x20);
    delay(1000);
    } 

  buttonState = digitalRead(buttonPin10);                     //read button pin
  if (buttonState == HIGH) {                                 //send hex value for 01000000
    Serial.write(0x40);
    delay(1000);
    } 

  buttonState = digitalRead(buttonPin11);                     //read button pin
  if (buttonState == HIGH) {                                 //send hex value for 10000000
    Serial.write(0x80);
    delay(1000);
    } 

  buttonState = digitalRead(buttonPin12);                     //read button pin
  if (buttonState == HIGH) {                                 //send hex value for 11111111
    Serial.write(0xFF);
    delay(1000);
    }  

}
  