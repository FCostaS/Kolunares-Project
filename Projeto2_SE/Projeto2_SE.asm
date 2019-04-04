
_SwitchCase:

;Projeto2_SE.c,47 :: 		int SwitchCase()
;Projeto2_SE.c,49 :: 		switch ( uiValor )
	GOTO        L_SwitchCase0
;Projeto2_SE.c,51 :: 		case 1 :
L_SwitchCase2:
;Projeto2_SE.c,53 :: 		return 1;
	MOVLW       1
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_SwitchCase
;Projeto2_SE.c,56 :: 		case 2 :
L_SwitchCase3:
;Projeto2_SE.c,58 :: 		return 2;
	MOVLW       2
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_SwitchCase
;Projeto2_SE.c,61 :: 		case 3 :
L_SwitchCase4:
;Projeto2_SE.c,62 :: 		Lcd_Out(1,10,"         ");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_Projeto2_SE+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_Projeto2_SE+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Projeto2_SE.c,63 :: 		Lcd_Out(1,10,"Left");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_Projeto2_SE+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_Projeto2_SE+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Projeto2_SE.c,64 :: 		Lcd_Out_Cp("     ");
	MOVLW       ?lstr3_Projeto2_SE+0
	MOVWF       FARG_Lcd_Out_CP_text+0 
	MOVLW       hi_addr(?lstr3_Projeto2_SE+0)
	MOVWF       FARG_Lcd_Out_CP_text+1 
	CALL        _Lcd_Out_CP+0, 0
;Projeto2_SE.c,65 :: 		return 3;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_SwitchCase
;Projeto2_SE.c,68 :: 		case 4 :
L_SwitchCase5:
;Projeto2_SE.c,70 :: 		return 4;
	MOVLW       4
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_SwitchCase
;Projeto2_SE.c,73 :: 		case 5 :
L_SwitchCase6:
;Projeto2_SE.c,75 :: 		return 5;
	MOVLW       5
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_SwitchCase
;Projeto2_SE.c,78 :: 		case 6 :
L_SwitchCase7:
;Projeto2_SE.c,79 :: 		Lcd_Out(1,10,"         ");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr4_Projeto2_SE+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr4_Projeto2_SE+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Projeto2_SE.c,80 :: 		Lcd_Out(1,10,"Down");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr5_Projeto2_SE+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr5_Projeto2_SE+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Projeto2_SE.c,81 :: 		Lcd_Out_Cp("     ");
	MOVLW       ?lstr6_Projeto2_SE+0
	MOVWF       FARG_Lcd_Out_CP_text+0 
	MOVLW       hi_addr(?lstr6_Projeto2_SE+0)
	MOVWF       FARG_Lcd_Out_CP_text+1 
	CALL        _Lcd_Out_CP+0, 0
;Projeto2_SE.c,82 :: 		return 6;
	MOVLW       6
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_SwitchCase
;Projeto2_SE.c,85 :: 		case 7 :
L_SwitchCase8:
;Projeto2_SE.c,86 :: 		Lcd_Out(1,10,"         ");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr7_Projeto2_SE+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr7_Projeto2_SE+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Projeto2_SE.c,87 :: 		Lcd_Out(1,10,"Stop");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr8_Projeto2_SE+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr8_Projeto2_SE+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Projeto2_SE.c,88 :: 		Lcd_Out_Cp("     ");
	MOVLW       ?lstr9_Projeto2_SE+0
	MOVWF       FARG_Lcd_Out_CP_text+0 
	MOVLW       hi_addr(?lstr9_Projeto2_SE+0)
	MOVWF       FARG_Lcd_Out_CP_text+1 
	CALL        _Lcd_Out_CP+0, 0
;Projeto2_SE.c,89 :: 		return 7;
	MOVLW       7
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_SwitchCase
;Projeto2_SE.c,92 :: 		case 8 :
L_SwitchCase9:
;Projeto2_SE.c,93 :: 		Lcd_Out(1,10,"         ");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr10_Projeto2_SE+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr10_Projeto2_SE+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Projeto2_SE.c,94 :: 		Lcd_Out(1,10,"Up");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr11_Projeto2_SE+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr11_Projeto2_SE+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Projeto2_SE.c,95 :: 		Lcd_Out_Cp("     ");
	MOVLW       ?lstr12_Projeto2_SE+0
	MOVWF       FARG_Lcd_Out_CP_text+0 
	MOVLW       hi_addr(?lstr12_Projeto2_SE+0)
	MOVWF       FARG_Lcd_Out_CP_text+1 
	CALL        _Lcd_Out_CP+0, 0
;Projeto2_SE.c,96 :: 		return 8;
	MOVLW       8
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_SwitchCase
;Projeto2_SE.c,99 :: 		case 9 :
L_SwitchCase10:
;Projeto2_SE.c,101 :: 		return 9;
	MOVLW       9
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_SwitchCase
;Projeto2_SE.c,104 :: 		case 10 :
L_SwitchCase11:
;Projeto2_SE.c,106 :: 		return 10;
	MOVLW       10
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_SwitchCase
;Projeto2_SE.c,109 :: 		case 11 :
L_SwitchCase12:
;Projeto2_SE.c,110 :: 		Lcd_Out(1,10,"         ");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr13_Projeto2_SE+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr13_Projeto2_SE+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Projeto2_SE.c,111 :: 		Lcd_Out(1,10,"Right");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr14_Projeto2_SE+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr14_Projeto2_SE+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Projeto2_SE.c,112 :: 		Lcd_Out_Cp("     ");
	MOVLW       ?lstr15_Projeto2_SE+0
	MOVWF       FARG_Lcd_Out_CP_text+0 
	MOVLW       hi_addr(?lstr15_Projeto2_SE+0)
	MOVWF       FARG_Lcd_Out_CP_text+1 
	CALL        _Lcd_Out_CP+0, 0
;Projeto2_SE.c,113 :: 		return 11;
	MOVLW       11
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_SwitchCase
;Projeto2_SE.c,116 :: 		case 12 :
L_SwitchCase13:
;Projeto2_SE.c,118 :: 		return 12;
	MOVLW       12
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_SwitchCase
;Projeto2_SE.c,120 :: 		}
L_SwitchCase0:
	MOVLW       0
	XORWF       _uiValor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SwitchCase35
	MOVLW       1
	XORWF       _uiValor+0, 0 
L__SwitchCase35:
	BTFSC       STATUS+0, 2 
	GOTO        L_SwitchCase2
	MOVLW       0
	XORWF       _uiValor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SwitchCase36
	MOVLW       2
	XORWF       _uiValor+0, 0 
L__SwitchCase36:
	BTFSC       STATUS+0, 2 
	GOTO        L_SwitchCase3
	MOVLW       0
	XORWF       _uiValor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SwitchCase37
	MOVLW       3
	XORWF       _uiValor+0, 0 
L__SwitchCase37:
	BTFSC       STATUS+0, 2 
	GOTO        L_SwitchCase4
	MOVLW       0
	XORWF       _uiValor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SwitchCase38
	MOVLW       4
	XORWF       _uiValor+0, 0 
L__SwitchCase38:
	BTFSC       STATUS+0, 2 
	GOTO        L_SwitchCase5
	MOVLW       0
	XORWF       _uiValor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SwitchCase39
	MOVLW       5
	XORWF       _uiValor+0, 0 
L__SwitchCase39:
	BTFSC       STATUS+0, 2 
	GOTO        L_SwitchCase6
	MOVLW       0
	XORWF       _uiValor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SwitchCase40
	MOVLW       6
	XORWF       _uiValor+0, 0 
L__SwitchCase40:
	BTFSC       STATUS+0, 2 
	GOTO        L_SwitchCase7
	MOVLW       0
	XORWF       _uiValor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SwitchCase41
	MOVLW       7
	XORWF       _uiValor+0, 0 
L__SwitchCase41:
	BTFSC       STATUS+0, 2 
	GOTO        L_SwitchCase8
	MOVLW       0
	XORWF       _uiValor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SwitchCase42
	MOVLW       8
	XORWF       _uiValor+0, 0 
L__SwitchCase42:
	BTFSC       STATUS+0, 2 
	GOTO        L_SwitchCase9
	MOVLW       0
	XORWF       _uiValor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SwitchCase43
	MOVLW       9
	XORWF       _uiValor+0, 0 
L__SwitchCase43:
	BTFSC       STATUS+0, 2 
	GOTO        L_SwitchCase10
	MOVLW       0
	XORWF       _uiValor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SwitchCase44
	MOVLW       10
	XORWF       _uiValor+0, 0 
L__SwitchCase44:
	BTFSC       STATUS+0, 2 
	GOTO        L_SwitchCase11
	MOVLW       0
	XORWF       _uiValor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SwitchCase45
	MOVLW       11
	XORWF       _uiValor+0, 0 
L__SwitchCase45:
	BTFSC       STATUS+0, 2 
	GOTO        L_SwitchCase12
	MOVLW       0
	XORWF       _uiValor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SwitchCase46
	MOVLW       12
	XORWF       _uiValor+0, 0 
L__SwitchCase46:
	BTFSC       STATUS+0, 2 
	GOTO        L_SwitchCase13
;Projeto2_SE.c,121 :: 		}
L_end_SwitchCase:
	RETURN      0
; end of _SwitchCase

_Buzzer:

;Projeto2_SE.c,124 :: 		void Buzzer()
;Projeto2_SE.c,126 :: 		PORTC.RC1 = ~PORTC.RC1;                         // Inversao de estado
	BTG         PORTC+0, 1 
;Projeto2_SE.c,127 :: 		delay_ms(1000);                                 // Delay de 2000 milisegundos
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Buzzer14:
	DECFSZ      R13, 1, 1
	BRA         L_Buzzer14
	DECFSZ      R12, 1, 1
	BRA         L_Buzzer14
	DECFSZ      R11, 1, 1
	BRA         L_Buzzer14
	NOP
	NOP
;Projeto2_SE.c,128 :: 		PORTC.RC1 = ~PORTC.RC1;                         // Inversao de estado
	BTG         PORTC+0, 1 
;Projeto2_SE.c,129 :: 		}
L_end_Buzzer:
	RETURN      0
; end of _Buzzer

_SetButtom:

;Projeto2_SE.c,131 :: 		int SetButtom()
;Projeto2_SE.c,133 :: 		TRISD=0x0F;                                     // Define Todos Os Pinos De 0 A 3 Do PORTD Como Entrada E Pinos De 4 A 7 Do PORTD Como Saida.
	MOVLW       15
	MOVWF       TRISD+0 
;Projeto2_SE.c,134 :: 		PORTB.RB0=0;                                    // Liga Coluna 1
	BCF         PORTB+0, 0 
;Projeto2_SE.c,135 :: 		Delay_ms(1);                                    // Aguarda 1ms Para Fazer A Leitura Das Teclas.
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_SetButtom15:
	DECFSZ      R13, 1, 1
	BRA         L_SetButtom15
	DECFSZ      R12, 1, 1
	BRA         L_SetButtom15
	NOP
	NOP
;Projeto2_SE.c,136 :: 		ucTecla = (((~PORTD)&0x0F));                    // A operação bitwise and retorna os pinos que nos interessa, nesse caso os pinos de RD0 a RD3
	COMF        PORTD+0, 0 
	MOVWF       R0 
	MOVLW       15
	ANDWF       R0, 1 
	MOVF        R0, 0 
	MOVWF       _ucTecla+0 
;Projeto2_SE.c,137 :: 		PORTB.RB0=1;                                    // Desliga Coluna 1
	BSF         PORTB+0, 0 
;Projeto2_SE.c,138 :: 		uiTeclas = (unsigned int)(ucTecla&0x0F);        //
	MOVLW       15
	ANDWF       R0, 0 
	MOVWF       _uiTeclas+0 
	CLRF        _uiTeclas+1 
	MOVLW       0
	ANDWF       _uiTeclas+1, 1 
	MOVLW       0
	MOVWF       _uiTeclas+1 
;Projeto2_SE.c,140 :: 		PORTB.RB1=0;                                    // Liga Coluna 2
	BCF         PORTB+0, 1 
;Projeto2_SE.c,141 :: 		Delay_ms(1);                                    // Aguardo um pouco
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_SetButtom16:
	DECFSZ      R13, 1, 1
	BRA         L_SetButtom16
	DECFSZ      R12, 1, 1
	BRA         L_SetButtom16
	NOP
	NOP
;Projeto2_SE.c,142 :: 		ucTecla = (((~PORTD)&0x0F));                    // A operacao bitwise AND retorna os pinos que nos interessa
	COMF        PORTD+0, 0 
	MOVWF       R0 
	MOVLW       15
	ANDWF       R0, 1 
	MOVF        R0, 0 
	MOVWF       _ucTecla+0 
;Projeto2_SE.c,143 :: 		PORTB.RB1=1;                                    // Desliga Coluna 2
	BSF         PORTB+0, 1 
;Projeto2_SE.c,144 :: 		uiTeclas |= (unsigned int)((ucTecla&0x0F)<<4);  // Realizo uma operacao bitwise e desloco em 4
	MOVLW       15
	ANDWF       R0, 0 
	MOVWF       R3 
	MOVLW       4
	MOVWF       R2 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__SetButtom49:
	BZ          L__SetButtom50
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__SetButtom49
L__SetButtom50:
	MOVF        R0, 0 
	IORWF       _uiTeclas+0, 1 
	MOVF        R1, 0 
	IORWF       _uiTeclas+1, 1 
;Projeto2_SE.c,146 :: 		PORTB.RB2=0;                                    // Liga coluna 3
	BCF         PORTB+0, 2 
;Projeto2_SE.c,147 :: 		Delay_ms(1);                                    // Aguardo um pouco
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_SetButtom17:
	DECFSZ      R13, 1, 1
	BRA         L_SetButtom17
	DECFSZ      R12, 1, 1
	BRA         L_SetButtom17
	NOP
	NOP
;Projeto2_SE.c,148 :: 		ucTecla = (((~PORTD)&0x0F));                    // A operacao bitwise AND retorna os pinos que nos interessa
	COMF        PORTD+0, 0 
	MOVWF       R0 
	MOVLW       15
	ANDWF       R0, 1 
	MOVF        R0, 0 
	MOVWF       _ucTecla+0 
;Projeto2_SE.c,149 :: 		PORTB.RB2=1;                                    // Desliga coluna 3
	BSF         PORTB+0, 2 
;Projeto2_SE.c,150 :: 		uiTeclas |= (unsigned int)((ucTecla&0x0F)<<8);  // Realizo uma operacao bitwise e desloco em 8
	MOVLW       15
	ANDWF       R0, 0 
	MOVWF       R3 
	MOVF        R3, 0 
	MOVWF       R1 
	CLRF        R0 
	MOVF        R0, 0 
	IORWF       _uiTeclas+0, 1 
	MOVF        R1, 0 
	IORWF       _uiTeclas+1, 1 
;Projeto2_SE.c,151 :: 		uiValor=0;                                      // Inicializo variavel auxiliar
	CLRF        _uiValor+0 
	CLRF        _uiValor+1 
;Projeto2_SE.c,163 :: 		for (ucContador=0;ucContador<=12;ucContador++)
	CLRF        _ucContador+0 
L_SetButtom18:
	MOVF        _ucContador+0, 0 
	SUBLW       12
	BTFSS       STATUS+0, 0 
	GOTO        L_SetButtom19
;Projeto2_SE.c,167 :: 		if ((unsigned int)(1<<ucContador)==uiTeclas)
	MOVF        _ucContador+0, 0 
	MOVWF       R0 
	MOVLW       1
	MOVWF       R1 
	MOVLW       0
	MOVWF       R2 
	MOVF        R0, 0 
L__SetButtom51:
	BZ          L__SetButtom52
	RLCF        R1, 1 
	BCF         R1, 0 
	RLCF        R2, 1 
	ADDLW       255
	GOTO        L__SetButtom51
L__SetButtom52:
	MOVF        R2, 0 
	XORWF       _uiTeclas+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SetButtom53
	MOVF        _uiTeclas+0, 0 
	XORWF       R1, 0 
L__SetButtom53:
	BTFSS       STATUS+0, 2 
	GOTO        L_SetButtom21
;Projeto2_SE.c,170 :: 		uiValor = (unsigned int) ucContador + 1 ;
	MOVF        _ucContador+0, 0 
	MOVWF       _uiValor+0 
	MOVLW       0
	MOVWF       _uiValor+1 
	INFSNZ      _uiValor+0, 1 
	INCF        _uiValor+1, 1 
;Projeto2_SE.c,171 :: 		}
L_SetButtom21:
;Projeto2_SE.c,163 :: 		for (ucContador=0;ucContador<=12;ucContador++)
	INCF        _ucContador+0, 1 
;Projeto2_SE.c,172 :: 		}
	GOTO        L_SetButtom18
L_SetButtom19:
;Projeto2_SE.c,176 :: 		if( uiValor == 6 || uiValor == 7 || uiValor == 3 || uiValor == 11 || uiValor == 8 )
	MOVLW       0
	XORWF       _uiValor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SetButtom54
	MOVLW       6
	XORWF       _uiValor+0, 0 
L__SetButtom54:
	BTFSC       STATUS+0, 2 
	GOTO        L__SetButtom33
	MOVLW       0
	XORWF       _uiValor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SetButtom55
	MOVLW       7
	XORWF       _uiValor+0, 0 
L__SetButtom55:
	BTFSC       STATUS+0, 2 
	GOTO        L__SetButtom33
	MOVLW       0
	XORWF       _uiValor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SetButtom56
	MOVLW       3
	XORWF       _uiValor+0, 0 
L__SetButtom56:
	BTFSC       STATUS+0, 2 
	GOTO        L__SetButtom33
	MOVLW       0
	XORWF       _uiValor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SetButtom57
	MOVLW       11
	XORWF       _uiValor+0, 0 
L__SetButtom57:
	BTFSC       STATUS+0, 2 
	GOTO        L__SetButtom33
	MOVLW       0
	XORWF       _uiValor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SetButtom58
	MOVLW       8
	XORWF       _uiValor+0, 0 
L__SetButtom58:
	BTFSC       STATUS+0, 2 
	GOTO        L__SetButtom33
	GOTO        L_SetButtom24
L__SetButtom33:
;Projeto2_SE.c,178 :: 		UART1_Write(uiValor); // Envia para o Arduino
	MOVF        _uiValor+0, 0 
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;Projeto2_SE.c,179 :: 		Delay_ms(100);        // Dou uma pausa de 100ms para dar tempo de enviar o dado corretamente
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_SetButtom25:
	DECFSZ      R13, 1, 1
	BRA         L_SetButtom25
	DECFSZ      R12, 1, 1
	BRA         L_SetButtom25
	DECFSZ      R11, 1, 1
	BRA         L_SetButtom25
	NOP
;Projeto2_SE.c,180 :: 		}
L_SetButtom24:
;Projeto2_SE.c,182 :: 		return SwitchCase();     // Verifico o que devo escrever no LCD para enviar o comando
	CALL        _SwitchCase+0, 0
;Projeto2_SE.c,183 :: 		}
L_end_SetButtom:
	RETURN      0
; end of _SetButtom

_TypeMode:

;Projeto2_SE.c,185 :: 		void TypeMode(int Obs)
;Projeto2_SE.c,187 :: 		if( Obs == 1)
	MOVLW       0
	XORWF       FARG_TypeMode_Obs+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__TypeMode60
	MOVLW       1
	XORWF       FARG_TypeMode_Obs+0, 0 
L__TypeMode60:
	BTFSS       STATUS+0, 2 
	GOTO        L_TypeMode26
;Projeto2_SE.c,189 :: 		ModoControle[0] = 'Y';
	MOVLW       89
	MOVWF       _ModoControle+0 
;Projeto2_SE.c,190 :: 		ModoControle[1] = 'e';
	MOVLW       101
	MOVWF       _ModoControle+1 
;Projeto2_SE.c,191 :: 		ModoControle[2] = 's';
	MOVLW       115
	MOVWF       _ModoControle+2 
;Projeto2_SE.c,192 :: 		ModoControle[3] = '\0';
	CLRF        _ModoControle+3 
;Projeto2_SE.c,193 :: 		}
	GOTO        L_TypeMode27
L_TypeMode26:
;Projeto2_SE.c,196 :: 		ModoControle[0] = 'N';
	MOVLW       78
	MOVWF       _ModoControle+0 
;Projeto2_SE.c,197 :: 		ModoControle[1] = 'o';
	MOVLW       111
	MOVWF       _ModoControle+1 
;Projeto2_SE.c,198 :: 		ModoControle[2] = '\0';
	CLRF        _ModoControle+2 
;Projeto2_SE.c,199 :: 		}
L_TypeMode27:
;Projeto2_SE.c,200 :: 		}
L_end_TypeMode:
	RETURN      0
; end of _TypeMode

_ConfigureTeclado:

;Projeto2_SE.c,202 :: 		void ConfigureTeclado()
;Projeto2_SE.c,204 :: 		TRISB.RB0=0;        // Define o pino RB0 do PORTB como saida(Coluna1).
	BCF         TRISB+0, 0 
;Projeto2_SE.c,205 :: 		TRISB.RB1=0;        // Define o pino RB1 do PORTB como saida(Coluna2).
	BCF         TRISB+0, 1 
;Projeto2_SE.c,206 :: 		TRISB.RB2=0;        // Define o pino RB2 do PORTB como saida(Coluna3).
	BCF         TRISB+0, 2 
;Projeto2_SE.c,207 :: 		TRISD = 0;          // Define Todos Os Pinos Do PORTD Como Saida.
	CLRF        TRISD+0 
;Projeto2_SE.c,208 :: 		}
L_end_ConfigureTeclado:
	RETURN      0
; end of _ConfigureTeclado

_main:

;Projeto2_SE.c,210 :: 		void main()
;Projeto2_SE.c,212 :: 		int Mode=0;                                    // Mode => Verifica se estou no modo controle ou nao
	CLRF        main_Mode_L0+0 
	CLRF        main_Mode_L0+1 
;Projeto2_SE.c,214 :: 		ConfigureTeclado();                            // Configuro as portas para o teclado matricial
	CALL        _ConfigureTeclado+0, 0
;Projeto2_SE.c,216 :: 		ADCON1 = 0b00001110;                           // SELECIONA OS PINOS 1, 2 DO PORTA COMO ENTRADAS ANAL?GICAS (AN0, AN1)
	MOVLW       14
	MOVWF       ADCON1+0 
;Projeto2_SE.c,217 :: 		ADC_Init();                                    // INICIALIZA M?DULO ANALOGICO
	CALL        _ADC_Init+0, 0
;Projeto2_SE.c,218 :: 		CMCON = 0b00000111;                            // DESABILITA COMPARADORES INTERNOS
	MOVLW       7
	MOVWF       CMCON+0 
;Projeto2_SE.c,220 :: 		TRISC.RC1 = 0;                                 //PORT C configurado como saida para o RX/TX
	BCF         TRISC+0, 1 
;Projeto2_SE.c,223 :: 		Lcd_Cmd(_LCD_CLEAR);                           // ENVIA O COMANDO DE LIMPAR TELA PARA O DISPLAY LCD
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Projeto2_SE.c,224 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                      // ENVIA O COMANDO DE DESLIGAR CURSOR PARA O DISPLAY LCD
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Projeto2_SE.c,226 :: 		Lcd_Init();                                    // INICIALIZA LCD
	CALL        _Lcd_Init+0, 0
;Projeto2_SE.c,227 :: 		UART1_Init(38400);                             // Utiliza bibliotecas do compilador para configuração o Baud rate.
	BSF         BAUDCON+0, 3, 0
	CLRF        SPBRGH+0 
	MOVLW       51
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;Projeto2_SE.c,229 :: 		Lcd_Out(1,1,"Guidance:");                      // ESCREVE A MENSAGEM POT1 NA PRIMEIRA LINHA E PRIMEIRA COLUNA DO DISPLAY LCD
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr16_Projeto2_SE+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr16_Projeto2_SE+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Projeto2_SE.c,230 :: 		Lcd_Out(2,1,"ControlM:");                      // ESCREVE A MENSAGEM POT2 NA PRIMEIRA LINHA E DECIMA PRIMEIRA COLUNA DO DISPLAY LCD
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr17_Projeto2_SE+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr17_Projeto2_SE+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Projeto2_SE.c,231 :: 		TypeMode(Mode);                                // CONVERTE O VALOR DO TIPO INTEIRO OBTIDO PELO CONVERSOR AD NA PORTA AN1 PARA UMA STRING
	MOVF        main_Mode_L0+0, 0 
	MOVWF       FARG_TypeMode_Obs+0 
	MOVF        main_Mode_L0+1, 0 
	MOVWF       FARG_TypeMode_Obs+1 
	CALL        _TypeMode+0, 0
;Projeto2_SE.c,232 :: 		Lcd_Out(2,10,ModoControle);                    // INICIALIZA MENSAGEM DO OBSTACULO NO LCD
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _ModoControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_ModoControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Projeto2_SE.c,233 :: 		Lcd_Out_Cp("     ");                           // LIMPA LCD PARTINDO DA POSICAO 10
	MOVLW       ?lstr18_Projeto2_SE+0
	MOVWF       FARG_Lcd_Out_CP_text+0 
	MOVLW       hi_addr(?lstr18_Projeto2_SE+0)
	MOVWF       FARG_Lcd_Out_CP_text+1 
	CALL        _Lcd_Out_CP+0, 0
;Projeto2_SE.c,235 :: 		while(1)                                       // Deixo rodando indefinidamente
L_main28:
;Projeto2_SE.c,238 :: 		if( UART1_Data_Ready() )                    // Verifico se tem dado para receber
	CALL        _UART1_Data_Ready+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main30
;Projeto2_SE.c,241 :: 		Mode = UART1_Read();                      // Lê o dado.
	CALL        _UART1_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_Mode_L0+0 
	MOVLW       0
	MOVWF       main_Mode_L0+1 
;Projeto2_SE.c,242 :: 		Delay_ms(50);                             // Pausa de 100ms.
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_main31:
	DECFSZ      R13, 1, 1
	BRA         L_main31
	DECFSZ      R12, 1, 1
	BRA         L_main31
	NOP
	NOP
;Projeto2_SE.c,243 :: 		if( Mode != ModeAnterior )
	MOVF        main_Mode_L0+1, 0 
	XORWF       _ModeAnterior+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main63
	MOVF        _ModeAnterior+0, 0 
	XORWF       main_Mode_L0+0, 0 
L__main63:
	BTFSC       STATUS+0, 2 
	GOTO        L_main32
;Projeto2_SE.c,245 :: 		ModeAnterior = Mode;                  // ATUALIZA FLAG DO OBSTACULO
	MOVF        main_Mode_L0+0, 0 
	MOVWF       _ModeAnterior+0 
	MOVF        main_Mode_L0+1, 0 
	MOVWF       _ModeAnterior+1 
;Projeto2_SE.c,246 :: 		Buzzer();                             // ATIVA BUZZER POR 1 SEGUNDO
	CALL        _Buzzer+0, 0
;Projeto2_SE.c,247 :: 		TypeMode(Mode);                       // CONVERTE O VALOR DO TIPO INTEIRO OBTIDO PELO CONVERSOR AD NA PORTA AN1 PARA UMA STRING
	MOVF        main_Mode_L0+0, 0 
	MOVWF       FARG_TypeMode_Obs+0 
	MOVF        main_Mode_L0+1, 0 
	MOVWF       FARG_TypeMode_Obs+1 
	CALL        _TypeMode+0, 0
;Projeto2_SE.c,248 :: 		Lcd_Out(2,10,ModoControle);           // GRAVA NOVA MENSAGEM NO LCD
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _ModoControle+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_ModoControle+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Projeto2_SE.c,249 :: 		Lcd_Out_Cp("     ");                  // LIMPA AS DEMAIS POSICOES
	MOVLW       ?lstr19_Projeto2_SE+0
	MOVWF       FARG_Lcd_Out_CP_text+0 
	MOVLW       hi_addr(?lstr19_Projeto2_SE+0)
	MOVWF       FARG_Lcd_Out_CP_text+1 
	CALL        _Lcd_Out_CP+0, 0
;Projeto2_SE.c,250 :: 		}
L_main32:
;Projeto2_SE.c,251 :: 		}
L_main30:
;Projeto2_SE.c,254 :: 		Comando = SetButtom();
	CALL        _SetButtom+0, 0
;Projeto2_SE.c,255 :: 		}
	GOTO        L_main28
;Projeto2_SE.c,256 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
