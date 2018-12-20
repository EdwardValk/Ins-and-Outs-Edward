int sensorPin = A0;
int sensorValue = 0;


void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(8, OUTPUT); //LED1
  pinMode(9, OUTPUT); //LED2
  pinMode(10, OUTPUT); //LED3
  pinMode(11, OUTPUT); //LED4
}

void loop() {
  // put your main code here, to run repeatedly:
  sensorValue = analogRead(sensorPin);
  Serial.println(sensorValue);

  if(sensorValue > 700){
    digitalWrite(8, HIGH);
    digitalWrite(9, HIGH);
    digitalWrite(10, HIGH);
    digitalWrite(11, HIGH);
    tone(10, 500);
  }
  else if(sensorValue > 350){
    digitalWrite(8, HIGH);
    digitalWrite(9, LOW);
    digitalWrite(8, LOW);
    digitalWrite(9, LOW);
    tone(10, 400);
  }
  else {
    digitalWrite(8, HIGH);
    digitalWrite(9, HIGH);
    digitalWrite(8, LOW);
    digitalWrite(9, LOW);
    noTone(10);
    
  }
  else {
    digitalWrite(8, HIGH);
    digitalWrite(9, HIGH);
    digitalWrite(10, HIGH);
    digitalWrite(11, HIGH);
  }
}
