
_main:

;lop.c,33 :: 		void main()
;lop.c,36 :: 		int i = 0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
	MOVLW      16
	MOVWF      main_c_L0+0
	MOVLW      0
	MOVWF      main_c_L0+1
	CLRF       main_b_L0+0
	CLRF       main_b_L0+1
;lop.c,39 :: 		CMCON = 0x07;
	MOVLW      7
	MOVWF      CMCON+0
;lop.c,40 :: 		ADCON1 = 0x06;
	MOVLW      6
	MOVWF      ADCON1+0
;lop.c,41 :: 		TRISA = 0x0F;                  // set direction to be input
	MOVLW      15
	MOVWF      TRISA+0
;lop.c,42 :: 		PORTA = 0x00;
	CLRF       PORTA+0
;lop.c,43 :: 		PORTD = 0x00;
	CLRF       PORTD+0
;lop.c,44 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;lop.c,45 :: 		TRISB = 0x00;                  //  set direction to be output
	CLRF       TRISB+0
;lop.c,46 :: 		TRISC = 0x00;                  // set direction to be output
	CLRF       TRISC+0
;lop.c,47 :: 		TRISD = 0x80;                  // set direction to be output
	MOVLW      128
	MOVWF      TRISD+0
;lop.c,49 :: 		PORTD.F2 = 1;
	BSF        PORTD+0, 2
;lop.c,50 :: 		PORTD.F7 = 1;
	BSF        PORTD+0, 7
;lop.c,52 :: 		Lcd_Init();                    // Initialize LCD
	CALL       _Lcd_Init+0
;lop.c,53 :: 		Lcd_Cmd(_LCD_CLEAR);           // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lop.c,54 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);      // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lop.c,55 :: 		Lcd_Out(1,1,txt1);             // Write text in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lop.c,56 :: 		Lcd_Out(2,1,txt2);             // Write text in second row
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lop.c,57 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
;lop.c,58 :: 		Lcd_Cmd(_LCD_CLEAR);           // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lop.c,59 :: 		Lcd_Out(1,1,txt3);             // Write text in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lop.c,60 :: 		Lcd_Out(2,1,txt4);             // Write text in second row
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt4+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lop.c,61 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main1:
	DECFSZ     R13+0, 1
	GOTO       L_main1
	DECFSZ     R12+0, 1
	GOTO       L_main1
	DECFSZ     R11+0, 1
	GOTO       L_main1
	NOP
	NOP
;lop.c,64 :: 		for(i=0; i<15; i++)
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main2:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main34
	MOVLW      15
	SUBWF      main_i_L0+0, 0
L__main34:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;lop.c,66 :: 		Lcd_Cmd(_LCD_SHIFT_RIGHT);
	MOVLW      28
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lop.c,67 :: 		Delay_ms(125);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;lop.c,64 :: 		for(i=0; i<15; i++)
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;lop.c,68 :: 		}
	GOTO       L_main2
L_main3:
;lop.c,70 :: 		i=0; //Motor Status OFF
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;lop.c,72 :: 		do
L_main6:
;lop.c,74 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lop.c,75 :: 		Lcd_Out(1,1,wtr1);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _wtr1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lop.c,76 :: 		Lcd_Out(2,1,mtr1);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mtr1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lop.c,77 :: 		if(c>0)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_c_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main35
	MOVF       main_c_L0+0, 0
	SUBLW      0
L__main35:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;lop.c,79 :: 		PORTD.F2 = 1;             //LCD Backlight ON
	BSF        PORTD+0, 2
;lop.c,80 :: 		c--;
	MOVLW      1
	SUBWF      main_c_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_c_L0+1, 1
;lop.c,81 :: 		}
	GOTO       L_main10
L_main9:
;lop.c,83 :: 		PORTD.F2 = 0;              //LCD Backlight OFF
	BCF        PORTD+0, 2
L_main10:
;lop.c,85 :: 		if(b>0)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_b_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main36
	MOVF       main_b_L0+0, 0
	SUBLW      0
L__main36:
	BTFSC      STATUS+0, 0
	GOTO       L_main11
;lop.c,87 :: 		PORTD.F0 = 1;              //Buzzer ON
	BSF        PORTD+0, 0
;lop.c,88 :: 		Delay_ms(125);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
	NOP
	NOP
;lop.c,89 :: 		PORTD.F0 = 0;              //Buzzer OFF
	BCF        PORTD+0, 0
;lop.c,90 :: 		b--;
	MOVLW      1
	SUBWF      main_b_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_b_L0+1, 1
;lop.c,91 :: 		}
L_main11:
;lop.c,93 :: 		if(PORTD.F7 == 0)            //Manual Backlight ON
	BTFSC      PORTD+0, 7
	GOTO       L_main13
;lop.c,94 :: 		c = 16;
	MOVLW      16
	MOVWF      main_c_L0+0
	MOVLW      0
	MOVWF      main_c_L0+1
L_main13:
;lop.c,96 :: 		if(PORTA == 0x0F)
	MOVF       PORTA+0, 0
	XORLW      15
	BTFSS      STATUS+0, 2
	GOTO       L_main14
;lop.c,98 :: 		PORTD.F1 = 1;
	BSF        PORTD+0, 1
;lop.c,99 :: 		Lcd_Out(1,8,wtr2);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _wtr2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lop.c,100 :: 		Lcd_Out(2,7,mtr3);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mtr3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lop.c,101 :: 		PORTC = 1;
	MOVLW      1
	MOVWF      PORTC+0
;lop.c,102 :: 		if(i == 0)
	MOVLW      0
	XORWF      main_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main37
	MOVLW      0
	XORWF      main_i_L0+0, 0
L__main37:
	BTFSS      STATUS+0, 2
	GOTO       L_main15
;lop.c,104 :: 		c = 16;                //Backlight
	MOVLW      16
	MOVWF      main_c_L0+0
	MOVLW      0
	MOVWF      main_c_L0+1
;lop.c,105 :: 		b=3;                   //Buzzer
	MOVLW      3
	MOVWF      main_b_L0+0
	MOVLW      0
	MOVWF      main_b_L0+1
;lop.c,106 :: 		}
L_main15:
;lop.c,107 :: 		i=1;
	MOVLW      1
	MOVWF      main_i_L0+0
	MOVLW      0
	MOVWF      main_i_L0+1
;lop.c,108 :: 		}
	GOTO       L_main16
L_main14:
;lop.c,109 :: 		else if(PORTA == 0x0E)
	MOVF       PORTA+0, 0
	XORLW      14
	BTFSS      STATUS+0, 2
	GOTO       L_main17
;lop.c,111 :: 		Lcd_Out(1,8,wtr3);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _wtr3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lop.c,112 :: 		if(i == 1)
	MOVLW      0
	XORWF      main_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main38
	MOVLW      1
	XORWF      main_i_L0+0, 0
L__main38:
	BTFSS      STATUS+0, 2
	GOTO       L_main18
;lop.c,113 :: 		Lcd_Out(2,7,mtr3);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mtr3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main19
L_main18:
;lop.c,115 :: 		Lcd_Out(2,7,mtr2);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mtr2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main19:
;lop.c,116 :: 		PORTC = 3;                 //LED Bar
	MOVLW      3
	MOVWF      PORTC+0
;lop.c,117 :: 		}
	GOTO       L_main20
L_main17:
;lop.c,118 :: 		else if(PORTA == 0x0C)
	MOVF       PORTA+0, 0
	XORLW      12
	BTFSS      STATUS+0, 2
	GOTO       L_main21
;lop.c,120 :: 		Lcd_Out(1,8,wtr4);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _wtr4+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lop.c,121 :: 		if(i == 1)
	MOVLW      0
	XORWF      main_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main39
	MOVLW      1
	XORWF      main_i_L0+0, 0
L__main39:
	BTFSS      STATUS+0, 2
	GOTO       L_main22
;lop.c,122 :: 		Lcd_Out(2,7,mtr3);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mtr3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main23
L_main22:
;lop.c,124 :: 		Lcd_Out(2,7,mtr2);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mtr2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main23:
;lop.c,125 :: 		PORTC = 7;                  //LED Bar
	MOVLW      7
	MOVWF      PORTC+0
;lop.c,126 :: 		}
	GOTO       L_main24
L_main21:
;lop.c,127 :: 		else if(PORTA == 0x08)
	MOVF       PORTA+0, 0
	XORLW      8
	BTFSS      STATUS+0, 2
	GOTO       L_main25
;lop.c,129 :: 		Lcd_Out(1,8,wtr5);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _wtr5+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lop.c,130 :: 		if(i == 1)
	MOVLW      0
	XORWF      main_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main40
	MOVLW      1
	XORWF      main_i_L0+0, 0
L__main40:
	BTFSS      STATUS+0, 2
	GOTO       L_main26
;lop.c,131 :: 		Lcd_Out(2,7,mtr3);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mtr3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main27
L_main26:
;lop.c,133 :: 		Lcd_Out(2,7,mtr2);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mtr2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main27:
;lop.c,134 :: 		PORTC = 15;              //LED Bar
	MOVLW      15
	MOVWF      PORTC+0
;lop.c,135 :: 		}
	GOTO       L_main28
L_main25:
;lop.c,136 :: 		else if(PORTA == 0x00)
	MOVF       PORTA+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main29
;lop.c,138 :: 		Lcd_Out(1,8,wtr6);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _wtr6+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lop.c,139 :: 		Lcd_Out(2,7,mtr2);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _mtr2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lop.c,140 :: 		PORTD.F1 = 0;              // Motor OFF
	BCF        PORTD+0, 1
;lop.c,141 :: 		if(i == 1)
	MOVLW      0
	XORWF      main_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main41
	MOVLW      1
	XORWF      main_i_L0+0, 0
L__main41:
	BTFSS      STATUS+0, 2
	GOTO       L_main30
;lop.c,143 :: 		c = 16;                  //Backlight
	MOVLW      16
	MOVWF      main_c_L0+0
	MOVLW      0
	MOVWF      main_c_L0+1
;lop.c,144 :: 		b = 3;                   //Buzzer
	MOVLW      3
	MOVWF      main_b_L0+0
	MOVLW      0
	MOVWF      main_b_L0+1
;lop.c,145 :: 		}
L_main30:
;lop.c,146 :: 		i=0;                       //Motor Status Updated
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;lop.c,147 :: 		PORTC = 31;                //LED Bar
	MOVLW      31
	MOVWF      PORTC+0
;lop.c,148 :: 		}
	GOTO       L_main31
L_main29:
;lop.c,150 :: 		PORTA = 0x0F;
	MOVLW      15
	MOVWF      PORTA+0
L_main31:
L_main28:
L_main24:
L_main20:
L_main16:
;lop.c,151 :: 		Delay_ms(125);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_main32:
	DECFSZ     R13+0, 1
	GOTO       L_main32
	DECFSZ     R12+0, 1
	GOTO       L_main32
	DECFSZ     R11+0, 1
	GOTO       L_main32
	NOP
	NOP
;lop.c,154 :: 		}while(1);                     // Endless loop
	GOTO       L_main6
;lop.c,155 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
