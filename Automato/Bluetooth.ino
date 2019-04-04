//Create a new software  serial
SoftwareSerial BTSerial(TX, RX);     //TX, RX (Bluetooth)

void ConfigureBluetooth()
{
  //Serial.println("Taxa de Transferência do Bluetooth Configurada");
  BTSerial.begin(38400);
}

void CheckReceived()
{
   int State;
   if(BTSerial.available() > 0)
   { 
      // Checks whether data is comming from the serial port
      State = BTSerial.read();    // Reads the data from the serial port
      delay(50);
      Serial.println(State);
      UnidadeDeControle(State);
   }
}

void SendBluetooth(char Character)
{
    BTSerial.write(Character);
}

