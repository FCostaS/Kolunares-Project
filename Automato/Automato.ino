// Bibliotecas e Nivelamento
#include <SoftwareSerial.h>
#define VCC HIGH
#define GND LOW

// Sonar
#define Pino_Trigger 6 //Define os pinos para o trigger e echo
#define Pino_Echo 7

// Motor Servo
#define PinServo A0   // Pino do Motor Servo
#include <Servo.h>
Servo motor;

// Ponte H
#define IN1 2
#define IN2 3
#define IN3 4
#define IN4 5
#define V1 8
#define V2 9

// Sensores Infravermelho
#define S0 A15
#define S1 A14
#define S2 A13

// Sensor de Velocidade (Encoder)

// Bluetooth
#define TX 10
#define RX 11

// Programa
int Obstaculo, s0, s1, s2;
int Desvia[2];
int Mode = 0, ModeAnt = 0;
int Counting = 0;
int Velocidade = 0;
float Z;
uint32_t Tempo;

typedef struct {
  int s0, s1, s2;
  int Velocity, Stop, ModuleVelocity;
  char Sentido;
} EstadoAutomato;
EstadoAutomato A;

void setup()
{
  // Configuracao Serial
  Serial.begin(38400);

  // Pinos do Sonar
  pinMode(Pino_Trigger, OUTPUT); // Sets the trigPin as an Output
  pinMode(Pino_Echo, INPUT);     // Sets the echoPin as an Input

  //motor.attach(PinServo);
  //motor.write(90);             // Alinha Servo

  // Ponte H
  pinMode(IN1, OUTPUT);
  pinMode(IN2, OUTPUT);
  pinMode(IN3, OUTPUT);
  pinMode(IN4, OUTPUT);
  pinMode(V1, OUTPUT);
  pinMode(V2, OUTPUT);

  // Sensores Infravermelhos
  /*pinMode(S0, INPUT);
    pinMode(S1, INPUT);
    pinMode(S2, INPUT);*/

  // Inicializando Bluetooth
  ConfigureBluetooth();

  // Nivelamento de Portas
  pinMode(A0, OUTPUT);
  digitalWrite(A0, HIGH);

  // Inicializando Robô
  Inicializar();
}

void loop()
{
  Obstaculo = Sonar(15); // Verifica Obstaculo
  if (Obstaculo && !Mode)
  {
    Mode = 1;
    //Sentido('S');
  }
  
  Sensor(S0, S1, S2, &s0, &s1, &s2);
  // Modo Segue Linha
  if (!Mode)
  {
    //Sensor(S0, S1, S2, &s0, &s1, &s2);
    Calibrar(s0,s1,s2);
  }
    // Modo Controle
    else 
    {
      CheckReceived();
      //Sensor(S0, S1, S2, &s0, &s1, &s2);
      if ( (s0 == 1 || s1 == 1 || s2 == 1) && !Obstaculo )
      {
        Mode = 0;
      }
    }

  if ( ModeAnt != Mode )
  {
    SendBluetooth(Mode);
    ModeAnt = Mode;
  }

  if((s0 == 0 && s1 == 0 && s2 == 0))
  {
    Counting++;
    if(Counting > 400)
    {
      Counting = 0;
      Mode = 1;
      SendBluetooth(Mode);
    }
  }
    else
    {
      Counting = 0;
      Mode = 0;
    }
}

