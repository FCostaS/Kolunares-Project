#include <math.h>
#include <string.h>

// CHAVES DE FUNCAO:
//  --------CHAVE1--------  --------CHAVE2---------
// |GLCD\LCD ( 1) = ON    |DIS1    ( 1) = OFF   |
// |RX       ( 2) = OFF   |DIS2    ( 2) = OFF   |
// |TX       ( 3) = OFF   |DIS3    ( 3) = OFF   |
// |REL1     ( 4) = OFF   |DIS4    ( 4) = OFF   |
// |REL2     ( 5) = OFF   |INFR    ( 5) = OFF   |
// |SCK      ( 6) = OFF   |RESIS   ( 6) = OFF   |
// |SDA      ( 7) = OFF   |TEMP    ( 7) = OFF   |
// |RTC      ( 8) = OFF   |VENT    ( 8) = OFF   |
// |LED1     ( 9) = OFF   |AN0     ( 9) = OFF   |
// |LED2     (10) = OFF   |AN1     (10) = OFF   |
//

// CONFIGURACOES DO BLUETOOTH (ARQUIVO SEPARADO)

// DETALHAR (INSERIR COMENTARIOS) - CONEXõES DO PIC com O MODULO

// Selecionando pinos utilizados para comunicao com display LCD
sbit LCD_RS at RE2_bit;// PINO 2 DO PORTD INTERLIGADO AO RS DO DISPLAY
sbit LCD_EN at RE1_bit;// PINO 3 DO PORTD INTERLIGADO AO EN DO DISPLAY
sbit LCD_D7 at RD7_bit;// PINO 7 DO PORTD INTERLIGADO AO D7 DO DISPLAY
sbit LCD_D6 at RD6_bit;// PINO 6 DO PORTD INTERLIGADO AO D6 DO DISPLAY
sbit LCD_D5 at RD5_bit;// PINO 5 DO PORTD INTERLIGADO AO D5 DO DISPLAY
sbit LCD_D4 at RD4_bit;// PINO 4 DO PORTD INTERLIGADO AO D4 DO DISPLAY

// Selecionando dire??o de fluxo de dados dos pinos utilizados para a comunicao com display LCD
sbit LCD_RS_Direction at TRISE2_bit;// SETA DIRE??O DO FLUXO DE DADOS DO PINO 2 DO PORTD
sbit LCD_EN_Direction at TRISE1_bit;// SETA DIRE??O DO FLUXO DE DADOS DO PINO 3 DO PORTD
sbit LCD_D7_Direction at TRISD7_bit;// SETA DIRE??O DO FLUXO DE DADOS DO PINO 7 DO PORTD
sbit LCD_D6_Direction at TRISD6_bit;// SETA DIRE??O DO FLUXO DE DADOS DO PINO 6 DO PORTD
sbit LCD_D5_Direction at TRISD5_bit;// SETA DIRE??O DO FLUXO DE DADOS DO PINO 5 DO PORTD
sbit LCD_D4_Direction at TRISD4_bit;// SETA DIRE??O DO FLUXO DE DADOS DO PINO 4 DO PORTD

char ModoControle[4];// STRING PARA ARMAZER O NOME DO TIPO DE MODO (CONTROLE SIM/NAO)
int ModeAnterior = 1;  // Variavel que servira para dizer se houve alteracao no tipo de modo Controle/Automatico

unsigned char ucTecla;       // Armazena Tecla Lida De Cada Coluna.
unsigned int  uiTeclas;      // Armazena Todas As Teclas Lidas.
unsigned int  uiValor;       // Variavel dizer qual botao foi pressionado.
unsigned char ucContador;    // Variavel Auxiliar Para Contador.

// Relaciono as teclas pressionada a alguma mensagem ou letra
int SwitchCase()
{
     switch ( uiValor )
     {
       case 1 :
           //Lcd_Out(1,10,"B");
           return 1;
       break;

       case 2 :
           //Lcd_Out(1,10,"C");
           return 2;
       break;

       case 3 :
           Lcd_Out(1,10,"         ");
           Lcd_Out(1,10,"Left");
           Lcd_Out_Cp("     ");
           return 3;
       break;

       case 4 :
           //Lcd_Out(1,10,"E");
           return 4;
       break;

       case 5 :
           //Lcd_Out(1,10,"F");
           return 5;
       break;

       case 6 :
           Lcd_Out(1,10,"         ");
           Lcd_Out(1,10,"Down");
           Lcd_Out_Cp("     ");
           return 6;
       break;

       case 7 :
          Lcd_Out(1,10,"         ");
          Lcd_Out(1,10,"Stop");
          Lcd_Out_Cp("     ");
          return 7;
       break;

       case 8 :
          Lcd_Out(1,10,"         ");
          Lcd_Out(1,10,"Up");
          Lcd_Out_Cp("     ");
          return 8;
       break;

       case 9 :
          //Lcd_Out(1,10,"J");
          return 9;
       break;

       case 10 :
          //Lcd_Out(1,10,"K");
          return 10;
       break;

       case 11 :
          Lcd_Out(1,10,"         ");
          Lcd_Out(1,10,"Right");
          Lcd_Out_Cp("     ");
          return 11;
       break;

       case 12 :
          //Lcd_Out(1,10,"M");
          return 12;
          break;
     }
}

// Ligo o Buzzer por 1 segundo e depois desligo
void Buzzer()
{
     PORTC.RC1 = ~PORTC.RC1;                         // Inversao de estado
     delay_ms(1000);                                 // Delay de 2000 milisegundos
     PORTC.RC1 = ~PORTC.RC1;                         // Inversao de estado
}

int SetButtom()
{
     TRISD=0x0F;                                     // Define Todos Os Pinos De 0 A 3 Do PORTD Como Entrada E Pinos De 4 A 7 Do PORTD Como Saida.
     PORTB.RB0=0;                                    // Liga Coluna 1
     Delay_ms(1);                                    // Aguarda 1ms Para Fazer A Leitura Das Teclas.
     ucTecla = (((~PORTD)&0x0F));                    // A operação bitwise and retorna os pinos que nos interessa, nesse caso os pinos de RD0 a RD3
     PORTB.RB0=1;                                    // Desliga Coluna 1
     uiTeclas = (unsigned int)(ucTecla&0x0F);        //

     PORTB.RB1=0;                                    // Liga Coluna 2
     Delay_ms(1);                                    // Aguardo um pouco
     ucTecla = (((~PORTD)&0x0F));                    // A operacao bitwise AND retorna os pinos que nos interessa
     PORTB.RB1=1;                                    // Desliga Coluna 2
     uiTeclas |= (unsigned int)((ucTecla&0x0F)<<4);  // Realizo uma operacao bitwise e desloco em 4

     PORTB.RB2=0;                                    // Liga coluna 3
     Delay_ms(1);                                    // Aguardo um pouco
     ucTecla = (((~PORTD)&0x0F));                    // A operacao bitwise AND retorna os pinos que nos interessa
     PORTB.RB2=1;                                    // Desliga coluna 3
     uiTeclas |= (unsigned int)((ucTecla&0x0F)<<8);  // Realizo uma operacao bitwise e desloco em 8
     uiValor=0;                                      // Inicializo variavel auxiliar
     /* Esses deslocamentos no uiTeclas eh apenas para saber onde ficara cada parte do teclado matricial
     Pois assim, teremos a seguinte configuracao
     = [0000][0000][0000]
     = [Coluna 1][Coluna 2][Coluna 3]
     Sem esse jeito, ao pressionarmos o botao da coluna 1 poderiamos dizer que foi na coluna 2 e gerar uma confusao das teclas pressionadas
     Fazendo isso, saberemos que, deslocando 9 vezes na hora da contagem, estaremos na coluna 3 botao 1
     Isso eh so uma forma de colocar em um numero de 12 bits os valores das colunas 1, 2 e 3. Mas poderiamos ativar e desativar a coluna 1
     e contar o deslocamento, depois ativar e desativar a coluna 2 e contar o deslocamento, ...
     */
     
     // Procurar Qual Tecla Foi Pressionada usando o deslocamento de bits.
     for (ucContador=0;ucContador<=12;ucContador++)
     {
          // (1<<Variavel) Igual A 2 Elevado A Um Expoente
          // Eu quero contar quantas vezes será necessário deslocar o bit para chegar chegar na tecla pressionada
         if ((unsigned int)(1<<ucContador)==uiTeclas)
         {
             // Coloca O Conteudo Da Variavel Do Contador Na Varaivel Auxiliar.
             uiValor = (unsigned int) ucContador + 1 ;
         }
     }
     
     // Enviando comandos
     // Eu verifico se alguma das teclas pressionadas eh a que gera um comando no arduino, se sim, eu envio o comando
     if( uiValor == 6 || uiValor == 7 || uiValor == 3 || uiValor == 11 || uiValor == 8 )
     {
        UART1_Write(uiValor); // Envia para o Arduino
        Delay_ms(100);        // Dou uma pausa de 100ms para dar tempo de enviar o dado corretamente
     }
     
     return SwitchCase();     // Verifico o que devo escrever no LCD para enviar o comando
}

void TypeMode(int Obs)
{
     if( Obs == 1)
     {
         ModoControle[0] = 'Y';
         ModoControle[1] = 'e';
         ModoControle[2] = 's';
         ModoControle[3] = '\0';
     }
     else
     {
         ModoControle[0] = 'N';
         ModoControle[1] = 'o';
         ModoControle[2] = '\0';
     }
}

void ConfigureTeclado()
{
   TRISB.RB0=0;        // Define o pino RB0 do PORTB como saida(Coluna1).
   TRISB.RB1=0;        // Define o pino RB1 do PORTB como saida(Coluna2).
   TRISB.RB2=0;        // Define o pino RB2 do PORTB como saida(Coluna3).
   TRISD = 0;          // Define Todos Os Pinos Do PORTD Como Saida.
}

void main()
{
     int Mode=0;                                    // Mode => Verifica se estou no modo controle ou nao
     int Comando;                                   // Salva o comando que pedi para enviar para o arduino
     ConfigureTeclado();                            // Configuro as portas para o teclado matricial

     ADCON1 = 0b00001110;                           // SELECIONA OS PINOS 1, 2 DO PORTA COMO ENTRADAS ANAL?GICAS (AN0, AN1)
     ADC_Init();                                    // INICIALIZA M?DULO ANALOGICO
     CMCON = 0b00000111;                            // DESABILITA COMPARADORES INTERNOS
     
     TRISC.RC1 = 0;                                 //PORT C configurado como saida para o RX/TX
     
     // Limpando LCD
     Lcd_Cmd(_LCD_CLEAR);                           // ENVIA O COMANDO DE LIMPAR TELA PARA O DISPLAY LCD
     Lcd_Cmd(_LCD_CURSOR_OFF);                      // ENVIA O COMANDO DE DESLIGAR CURSOR PARA O DISPLAY LCD

     Lcd_Init();                                    // INICIALIZA LCD
     UART1_Init(38400);                             // Utiliza bibliotecas do compilador para configuração o Baud rate.

     Lcd_Out(1,1,"Guidance:");                      // ESCREVE A MENSAGEM POT1 NA PRIMEIRA LINHA E PRIMEIRA COLUNA DO DISPLAY LCD
     Lcd_Out(2,1,"ControlM:");                      // ESCREVE A MENSAGEM POT2 NA PRIMEIRA LINHA E DECIMA PRIMEIRA COLUNA DO DISPLAY LCD
     TypeMode(Mode);                                // CONVERTE O VALOR DO TIPO INTEIRO OBTIDO PELO CONVERSOR AD NA PORTA AN1 PARA UMA STRING
     Lcd_Out(2,10,ModoControle);                    // INICIALIZA MENSAGEM DO OBSTACULO NO LCD
     Lcd_Out_Cp("     ");                           // LIMPA LCD PARTINDO DA POSICAO 10
     
     while(1)                                       // Deixo rodando indefinidamente
     {
       // Obtendo valores via bluetooth
       if( UART1_Data_Ready() )                    // Verifico se tem dado para receber
       {
         // Verifica se o dado enviado foi recebido no buffer
         Mode = UART1_Read();                      // Lê o dado.
         Delay_ms(50);                             // Pausa de 100ms.
         if( Mode != ModeAnterior )
         {
             ModeAnterior = Mode;                  // ATUALIZA FLAG DO OBSTACULO
             Buzzer();                             // ATIVA BUZZER POR 1 SEGUNDO
             TypeMode(Mode);                       // CONVERTE O VALOR DO TIPO INTEIRO OBTIDO PELO CONVERSOR AD NA PORTA AN1 PARA UMA STRING
             Lcd_Out(2,10,ModoControle);           // GRAVA NOVA MENSAGEM NO LCD
             Lcd_Out_Cp("     ");                  // LIMPA AS DEMAIS POSICOES
         }
       }

       // Funcao para verificar se pressionei um botao
       Comando = SetButtom();
     }
}