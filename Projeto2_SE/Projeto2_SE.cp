#line 1 "C:/Users/fcsou/Desktop/Disciplinas/Sistemas Embarcados/Projeto 2/Projeto2_SE/Projeto2_SE.c"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for pic/include/math.h"





double fabs(double d);
double floor(double x);
double ceil(double x);
double frexp(double value, int * eptr);
double ldexp(double value, int newexp);
double modf(double val, double * iptr);
double sqrt(double x);
double atan(double f);
double asin(double x);
double acos(double x);
double atan2(double y,double x);
double sin(double f);
double cos(double f);
double tan(double x);
double exp(double x);
double log(double x);
double log10(double x);
double pow(double x, double y);
double sinh(double x);
double cosh(double x);
double tanh(double x);
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for pic/include/string.h"





void * memchr(void *p, char n, unsigned int v);
int memcmp(void *s1, void *s2, int n);
void * memcpy(void * d1, void * s1, int n);
void * memmove(void * to, void * from, int n);
void * memset(void * p1, char character, int n);
char * strcat(char * to, char * from);
char * strchr(char * ptr, char chr);
int strcmp(char * s1, char * s2);
char * strcpy(char * to, char * from);
int strlen(char * s);
char * strncat(char * to, char * from, int size);
char * strncpy(char * to, char * from, int size);
int strspn(char * str1, char * str2);
char strcspn(char * s1, char * s2);
int strncmp(char * s1, char * s2, char len);
char * strpbrk(char * s1, char * s2);
char * strrchr(char *ptr, char chr);
char * strstr(char * s1, char * s2);
char * strtok(char * s1, char * s2);
#line 23 "C:/Users/fcsou/Desktop/Disciplinas/Sistemas Embarcados/Projeto 2/Projeto2_SE/Projeto2_SE.c"
sbit LCD_RS at RE2_bit;
sbit LCD_EN at RE1_bit;
sbit LCD_D7 at RD7_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D4 at RD4_bit;


sbit LCD_RS_Direction at TRISE2_bit;
sbit LCD_EN_Direction at TRISE1_bit;
sbit LCD_D7_Direction at TRISD7_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D4_Direction at TRISD4_bit;

char ModoControle[4];
int ModeAnterior = 1;

unsigned char ucTecla;
unsigned int uiTeclas;
unsigned int uiValor;
unsigned char ucContador;


int SwitchCase()
{
 switch ( uiValor )
 {
 case 1 :

 return 1;
 break;

 case 2 :

 return 2;
 break;

 case 3 :
 Lcd_Out(1,10,"         ");
 Lcd_Out(1,10,"Left");
 Lcd_Out_Cp("     ");
 return 3;
 break;

 case 4 :

 return 4;
 break;

 case 5 :

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

 return 9;
 break;

 case 10 :

 return 10;
 break;

 case 11 :
 Lcd_Out(1,10,"         ");
 Lcd_Out(1,10,"Right");
 Lcd_Out_Cp("     ");
 return 11;
 break;

 case 12 :

 return 12;
 break;
 }
}


void Buzzer()
{
 PORTC.RC1 = ~PORTC.RC1;
 delay_ms(1000);
 PORTC.RC1 = ~PORTC.RC1;
}

int SetButtom()
{
 TRISD=0x0F;
 PORTB.RB0=0;
 Delay_ms(1);
 ucTecla = (((~PORTD)&0x0F));
 PORTB.RB0=1;
 uiTeclas = (unsigned int)(ucTecla&0x0F);

 PORTB.RB1=0;
 Delay_ms(1);
 ucTecla = (((~PORTD)&0x0F));
 PORTB.RB1=1;
 uiTeclas |= (unsigned int)((ucTecla&0x0F)<<4);

 PORTB.RB2=0;
 Delay_ms(1);
 ucTecla = (((~PORTD)&0x0F));
 PORTB.RB2=1;
 uiTeclas |= (unsigned int)((ucTecla&0x0F)<<8);
 uiValor=0;
#line 163 "C:/Users/fcsou/Desktop/Disciplinas/Sistemas Embarcados/Projeto 2/Projeto2_SE/Projeto2_SE.c"
 for (ucContador=0;ucContador<=12;ucContador++)
 {


 if ((unsigned int)(1<<ucContador)==uiTeclas)
 {

 uiValor = (unsigned int) ucContador + 1 ;
 }
 }



 if( uiValor == 6 || uiValor == 7 || uiValor == 3 || uiValor == 11 || uiValor == 8 )
 {
 UART1_Write(uiValor);
 Delay_ms(100);
 }

 return SwitchCase();
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
 TRISB.RB0=0;
 TRISB.RB1=0;
 TRISB.RB2=0;
 TRISD = 0;
}

void main()
{
 int Mode=0;
 int Comando;
 ConfigureTeclado();

 ADCON1 = 0b00001110;
 ADC_Init();
 CMCON = 0b00000111;

 TRISC.RC1 = 0;


 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);

 Lcd_Init();
 UART1_Init(38400);

 Lcd_Out(1,1,"Guidance:");
 Lcd_Out(2,1,"ControlM:");
 TypeMode(Mode);
 Lcd_Out(2,10,ModoControle);
 Lcd_Out_Cp("     ");

 while(1)
 {

 if( UART1_Data_Ready() )
 {

 Mode = UART1_Read();
 Delay_ms(50);
 if( Mode != ModeAnterior )
 {
 ModeAnterior = Mode;
 Buzzer();
 TypeMode(Mode);
 Lcd_Out(2,10,ModoControle);
 Lcd_Out_Cp("     ");
 }
 }


 Comando = SetButtom();
 }
}
