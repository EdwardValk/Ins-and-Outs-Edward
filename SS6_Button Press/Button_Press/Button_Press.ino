 const int LED = 12;
const int LED2 = 13;  
const int LED3 = 10;
const int LED4 = 9;

const int BUTTON =8;

int val = 0;

void setup() {
  pinMode(LED, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);

  pinMode(BUTTON, INPUT);
}

void loop(){
  val = digitalRead(BUTTON);

  if (val == HIGH){
  digitalWrite(LED, HIGH);
  digitalWrite(LED2, HIGH);
  digitalWrite(LED3, HIGH);
  digitalWrite(LED4, HIGH);
} else {
  digitalWrite(LED, LOW);
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, LOW);
  digitalWrite(LED4, LOW);
  }
}
