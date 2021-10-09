#define botao_subir 22
#define botao_descer 23
char checagem;
int botao1 = 0;
int botao2 = 0;
int potAnterior = 0;

void setup(){
  
  pinMode(botao_subir, INPUT_PULLUP);
  pinMode(botao_descer, INPUT_PULLUP);
  Serial.begin(9600);
  if (Serial.available ()){
    checagem = Serial.read();
  }
}

void loop(){
  //botões 
  int delay_time = 50;
  if (digitalRead(botao_subir) == LOW && botao1 == 0){
    //Serial.println("Player 1: Subiu!");
    Serial.print("Sobe");
    Serial.print("\n");
    delay(delay_time);
    botao1 = 1;
  }
  if (digitalRead(botao_subir) == HIGH && botao1 == 1){
    botao1 = 0;
    delay(delay_time);
  }

  if (digitalRead(botao_descer) == LOW && botao2 == 0){
    //Serial.println("Player 1: Desceu!");
    Serial.print("Desce");
    Serial.print("\n");
    delay(delay_time);
    botao2 = 1;
  }
  
  if (digitalRead(botao_descer) == HIGH && botao2 == 1){
    botao2 = 0;
    delay(delay_time);
  }
  
  //potenciometro
  int potenciometro = analogRead(32);
  int potMap = map(potenciometro, 0, 4095, 0, 20);
  
  if (potMap != potAnterior){
      potAnterior = potMap;
      //Serial.print("2 ");
      Serial.print(potMap);
      Serial.print("\n");
  }
}
