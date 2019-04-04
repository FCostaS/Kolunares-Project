float Limiar, Erro, Contador, Mean;
int BranchTaken = 0, BranchHit = 1, StatePresent = 0;

float StandardDeviation(float *sample, float mean, int n)
{
  int i;
  float sd = 0.0;
  for (i = 0; i < n; i++)
  {
    sd += pow(mean - sample[i], 2);
  }
  sd = sqrt(sd / (n - 1)); // Desvio Padrao Amostral
  //sd = 1.661 * sd / sqrt(n); // Erro Studentizado
  return sd; // Desvio Padrao Amostral da Media
}

void Inicializar()
{
  uint32_t Sample = millis();
  float Sum = 0, *vector;
  int c = 0;
  vector = (float*)malloc(100 * sizeof(float));
  Limiar = 0;
  while ( c < 200 )
  {
    vector[c] = analogRead(S1);
    //Serial.println(vector[c]);
    Sum += vector[c];
    c++;
  }
  Limiar = Sum / c;
  Erro = StandardDeviation(vector, Limiar, c);
  /*Serial.print("Fundo definido com erro = ");
    Serial.print(Erro);
    Serial.print(" e corte = ");
    Serial.println(Limiar);*/
  while ( s1 )
  {
    Sensor(S0, S1, S2, s0, s1, s2);
    //Serial.println("Aguardando s1");
  }
  SetVelocity(120);
  A.s0 = 0; A.s1 = 0; A.s2 = 0; A.Stop = 0;
  Tempo = millis();
  Desvia[0] = 0;
  Desvia[1] = 0;
}

int TabelaDeDecisao()
{
  if ( StatePresent == 0 && BranchHit ) // Estado A
  {
    StatePresent = 0;
    BranchTaken = 1;
  }
  else if ( StatePresent == 0 && !BranchHit ) // Estado B
  {
    StatePresent = 1;
    BranchTaken = 1;
  }
  else if ( StatePresent == 1 && BranchHit)
  {
    StatePresent = 0;
    BranchTaken = 1;
  }
  else if ( StatePresent == 1 && !BranchHit )
  {
    StatePresent = 2;
    BranchTaken = 0;
  }
  else if ( StatePresent == 2 && BranchHit)
  {
    StatePresent = 3;
    BranchTaken = 0;
  }
  else if ( StatePresent == 2 && !BranchHit)
  {
    StatePresent = 2;
    BranchTaken = 0;
  }
  else if ( StatePresent == 3 && BranchHit)
  {
    StatePresent = 0;
    BranchTaken = 1;
  }
  else
  {
    StatePresent = 3;
    BranchTaken = 0;
  }
}

int Sonar(int LimiteDistancia)
{
  long duration; float distance;
  digitalWrite(Pino_Trigger, LOW); delayMicroseconds(2); // Limpa o Trigger
  digitalWrite(Pino_Trigger, HIGH); delayMicroseconds(10); digitalWrite(Pino_Trigger, LOW); // Define o Trigger no HIGH por 10 segundos
  duration = pulseIn(Pino_Echo, HIGH); // Retorna o tempo de viagem da onda sonora (0,
  distance = duration * 0.034 / 2; // Calculando distância em cm = (Pulso em nível alto)*VelocidadeDoSom/2 | Esse 2 é o tempo de ida e volta do sinal
  int OBI = distance < LimiteDistancia;
  Z = distance;
  return OBI;
}

void Visao(char Direcao)
{
  if      ( Direcao == 'E' ) {
    motor.write(179);
  }
  else if ( Direcao == 'C' ) {
    motor.write(90);
  }
  else if ( Direcao == 'D' ) {
    motor.write(0);
  }
  delay(1000);
}

void Sentido(char Motor)
{
  if      ( Motor == 'E' ) {
    RodaA(-1);   // Rotacionar Para Esquerda
    RodaB(1);
  }
  else if ( Motor == 'D' ) {
    RodaA(1);    // Rotacionar Para Direita
    RodaB(-1);
  }
  else if ( Motor == 'R' ) {
    RodaA(-1);   // Ré
    RodaB(-1);
  }
  else if ( Motor == 'F' ) {
    RodaA(1);    // Frente
    RodaB(1);
  }
  else if ( Motor == 'S' ) {
    RodaA(0);    // Freio
    RodaB(0);
    SetVelocity(0);
  }
  A.Sentido = Motor;
}

void RodaA(int Direcao) // Motor Direita
{
  int I1 = LOW, I2 = HIGH;
  if ( Direcao == 1 ) {
    digitalWrite(IN1, I1);  // Para frente
    digitalWrite(IN2, I2);
  }
  else if ( Direcao == -1 ) {
    digitalWrite(IN1, !I1);  // Para trás
    digitalWrite(IN2, !I2);
  }
  else {
    digitalWrite(IN1, HIGH);  // Parar
    digitalWrite(IN2, HIGH);
  }
}

void RodaB(int Direcao) // Motor Esquerda
{
  int I1 = HIGH, I2 = LOW;
  if ( Direcao == 1 ) {
    digitalWrite(IN3, I1);  // Para frente
    digitalWrite(IN4, I2);
  }
  else if ( Direcao == -1 ) {
    digitalWrite(IN3, !I1);  // Para tras
    digitalWrite(IN4, !I2);
  }
  else {
    digitalWrite(IN3, HIGH);  // Parar
    digitalWrite(IN4, HIGH);
  }
}

void SetVelocity(int v)
{
  if (A.Velocity != v )
  {
    analogWrite(V1, v);
    analogWrite(V2, v);
    A.Velocity = v;
  }
}

void Sensor(int S0, int S1, int S2, int *s0, int *s1, int *s2)
{
  float i1 = analogRead(S0), i2 = analogRead(S1), i3 = analogRead(S2), corte = max(Limiar + Erro, 650);
  //Serial.print(i); Serial.print(" ");
  if ( i1 >= corte )
  {
    *s0 = 1;
  }
  else
  {
    *s0 = 0;
  }
  if ( i2 >= corte )
  {
    *s1 = 1;
  }
  else
  {
    *s1 = 0;
  }
  if ( i3 >= corte )
  {
    *s2 = 1;
  }
  else
  {
    *s2 = 0;
  }
  //Serial.print(i1); Serial.print(" "); Serial.print(i2); Serial.print(" "); Serial.println(i3);
  //Serial.print(*s0); Serial.print(" "); Serial.print(*s1); Serial.print(" "); Serial.println(*s2);
}

int SensorUNITED(int S)
{
  float i = analogRead(S), corte = max(Limiar + Erro, 650);
  //Serial.print(i); Serial.print(" ");
  return i >= corte;
}


void Investigue()
{
    Sentido('S');
  
    if( A.Stop == 0 )
    {
        SetVelocity(120);
        uint32_t t;
        int s;
        if(A.s0 == 1)
        {
            t = millis();
            do
            {
                s = SensorUNITED(S1);
                Sentido('E');
            }while( millis()-t < 800 && s == 0 );
            if( s == 0 )
            {
              t = millis();
              do
              {
                s = SensorUNITED(S1);
                Sentido('D');
              }while( millis()-t < 1000 && s == 0 );
            }
        }
        else if(A.s2 == 1)
        {
            uint32_t t = millis(); int s;
            do
            {
                s = SensorUNITED(S1);
                Sentido('D');
                //Serial.println(t-millis());
            }while( millis()-t < 800 && s == 0 );
            if( s == 0 )
            {
                t = millis();
                do
                {
                  s = SensorUNITED(S1);
                  Sentido('E');
                }while( millis()-t < 1000 && s == 0 );
            }
        }
        else
        {
            t = millis();
            if( Desvia[0] < Desvia[1] )
            {
                do{
                  Sentido('D');
                }while( millis()-t < 800 && !SensorUNITED(S0) );
                if( !SensorUNITED(S0) )
                {
                    t = millis();
                    do{
                        Sentido('E');
                    }while( millis()-t < 1000 && !SensorUNITED(S2) );  
                }  
            }
              else
              {
                  do{
                    Sentido('E');
                  }while( millis()-t < 1000 && !SensorUNITED(S2) );
                  if( !SensorUNITED(S0) )
                  {
                      t = millis();
                      do{
                          Sentido('D');
                      }while( millis()-t < 1000 && !SensorUNITED(S0) );  
                  }   
              }
            Desvia[0] = 0;
            Desvia[1] = 0;
        }
        A.Stop = 1;
    }
    Sentido('S');
}

void Calibrar(int s0, int s1, int s2)
{
  if ( s0 == 1 || s1 == 1 || s2 == 1 )
  {
    A.Stop = 0;
    SetVelocity(200);
    Sentido('F');
    if ( s1 == 0 )
    {
      SetVelocity(100);
      if ( s0 == 1 )
      {
        Desvia[0]++;  // Rotacione para Esquerda
        while ( !SensorUNITED(S1) )
        {
          Sentido('E');
        }
      }
        else if ( s2 == 1 )
        {
          Desvia[1]++; // Rotacione para Direita
          while ( !SensorUNITED(S1) )
          {
            Sentido('D');
          }
        }
    }
    A.s0 = SensorUNITED(S0);
    A.s1 = SensorUNITED(S1);
    A.s2 = SensorUNITED(S2); // Salva último estado
    Contador = 0;
  }
    else{ Investigue(); }
}
