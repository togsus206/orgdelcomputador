.data	
	laberinto: .dword 0x2b2d2d2d2d2d2d2b, 0x2b2d2d2d2d2d2d2d ,  0x20202020207c587c ,  0x7c2d20202020207c ,  0x202b2d2d207c207c ,  0x7c20202d2d2b207c ,  0x207c2020207c207c ,  0x7c202020207c207c ,  0x207c202d2d2b207c ,  0x2b2d2d20207c207c ,  0x207c20202020207c ,  0x7c232020207c2020 ,  0x2d2b2d2d2d2d2d2b ,  0x2b2d2d2d2d2b2d2d 
	estado: .dword 0x4e45204f4745554a, 0x21214f5352554320
	_stack_ptr: .dword _stack_end   // Get the stack pointer value from memmap definition

.text	// Configuracion del Stack Pointer
	ldr     X1, _stack_ptr  
        mov     sp, X1          

	// Limpiar X0 y X4 siempre de comenzar el programa
	MOV X0, XZR
	MOV X4, XZR
	
	LDR X0, =laberinto	 //X0 = Dirección base del arreglo "laberinto"
main:
 	//Aquí va el código de su programa
        ADD X1, X0, #16
		ADD X2, X1, #16
		MOV X25, 0X58
		MOV X26, 0X20
		MOV X27, 0X58
		MOV X28, 0X20
		LSL X25, X25, #8
		LSL X26, X26, #8
		LSL X27, X27, #16
		LSL X28, X28, #16
		ADD X9, X9, #4
	abajo:
		LDR X7, [X1,0]
		SUB X7, X7, X25
		STR X7, [X1,0]
		LDR X8, [X2,0] 
		SUB X8, X8, X26
		ADD X8, X8, X25
		STR X8, [X2, 0] 
		ADD X1, X1, #16 //bp
		ADD X2, X2, #16
		SUB X9, X9, #1
	    CBNZ X9, abajo
		ADD X9, X9, #4
		LDR X7, [X1,0]
	derecha:
		SUB X7, X7, X25
		SUB X7, X7, X28
		ADD X7, X7, X27
		STR X7, [X1,0]   
		LSL X28, X28, #8 //bp
		LSL X25, X25, #8
		LSL X27, X27, #8
		SUB X9,X9, #1
		CBNZ X9, derecha
		SUB X2, X1, #16 
		LDR X8, [X2,0]
		LSL X26, X26, #32
		ADD X9, X9, #2
	arriba:
		SUB X7, X7, X25
		STR X7, [X1,0]
		SUB X8, X8, X26
		ADD X8, X8, X25
		STR X8, [X2,0]  
		SUB X1, X1, #16 //bp
		SUB X2, X2, #16
		SUB X9, X9, #1
		LDR X7, [X1,0]
		LDR X8, [X2,0]
		CBNZ X9, arriba
		MOV X27, 0X58
		LSL X27, X27, #32
		ADD X9, X9, #2
		LSR X26, X26, #8
	izquierda:
		SUB X7, X7, X25
		SUB X7, X7, X26
		ADD X7, X7, X27
		STR X7, [X1,0]  
		LSR X25, X25,#8 //bp
		LSR X26, X26, #8
		LSR X27, X27, #8
		SUB X9, X9, #1
		CBNZ X9, izquierda
		LSL X26, X26, #8
		ADD X9, X9, #2
	arriba2:
		SUB X7, X7, X25
		STR X7, [X1,0]
		SUB X8, X8, X26
		ADD X8, X8, X25
		STR X8, [X2,0]
		SUB X1, X1, #16 //bp
		SUB X2, X2, #16
		SUB X9, X9, #1
		LDR X7, [X1,0]
		LDR X8, [X2,0]
		CBNZ X9, arriba2
		ADD X9, X9, #4
		LSR X28, X28, #16
		LSL X27, X27, #16
	derecha2:
		SUB X7, X7, X25
		SUB X7, X7, X28
		ADD X7, X7, X27
		STR X7, [X1,0] 
		LSL X28, X28, #8 // bp
		LSL X25, X25, #8
		LSL X27, X27, #8
		SUB X9,X9, #1
		CBNZ X9, derecha2
		ADD X2, X1, #16
		LDR X8, [X2,0]
		LSL X26, X26, #32
		ADD X9, X9, #4
	abajo2:
		SUB X7, X7, X25
		STR X7, [X1,0]
		SUB X8, X8, X26
		ADD X8, X8, X25
		STR X8, [X2, 0]
		ADD X1, X1, #16 //bp
		ADD X2, X2, #16
		LDR X7, [X1,0]
		LDR X8, [X2,0]
		SUB X9, X9, #1
		CBNZ X9, abajo2
		LDR X7, [X1, 6]
		LSR X25, X25, #48
		LSR X26, X26, #40
		ADD X9, X9, #2
	derecha3:
		SUB X7, X7, X25
		SUB X7, X7, X26
		LSL X25, X25, #8
		LSL X26, X26, #8
		ADD X7, X7, X25
		STR X7, [X1,6]
		SUB X9, X9, #1 //bp
		CBNZ X9, derecha3
		LDR X7, [X1,#8]
		SUB X2, X1, #16
		LDR X8, [X2,#8]
		ADD X9, X9, #4
		LSR X25, X25, #16
		LSR X26, X26, #24
	arriba3:
		SUB X7, X7, X25
		STR X7, [X1,8]
		SUB X8, X8, X26
		ADD X8, X8, X25
		STR X8, [X2,8]
		SUB X1, X1, #16 //bp
		SUB X2, X2, #16
		SUB X9, X9, #1
		LDR X7, [X1,8]
		LDR X8, [X2,8]
		CBNZ X9, arriba3
		ADD X9, X9, #4
		LSL X26, X26, #8
	derecha4:
		SUB X7, X7, X25
		SUB X7, X7, X26
		LSL X25, X25, #8
		LSL X26, X26, #8
		ADD X7, X7, X25
		STR X7, [X1,8]
		SUB X9, X9, #1  //bp
		CBNZ X9, derecha4
        ADD X9, X9, #2
		ADD X2, X1, #16
        LDR X8, [X2, 8]
		LSR X26, X26, #8
      abajo3:
		SUB X7, X7, X25
		STR X7, [X1,8]
		SUB X8, X8, X26
		ADD X8, X8, X25
		STR X8, [X2, 8]
		ADD X1, X1, #16  //bp
		ADD X2, X2, #16
		LDR X7, [X1,8]
		LDR X8, [X2,8]
		SUB X9, X9, #1
		CBNZ X9, abajo3
		LSR X26, X26, 8
		MOV X27, 0X58
		LSL X27, X27, #32
	izquierda2:
		SUB X7, X7, X25
		SUB X7, X7, X26
		ADD X7, X7, X27
		STR X7, [X1,8]
		LSR X25, X25,#8 //bp
		ADD X9, X9, #2
	abajo4:
		SUB X7, X7, X25
		STR X7, [X1,8]
		SUB X8, X8, X26
		ADD X8, X8, X25
		STR X8, [X2, 8]
		ADD X1, X1, #16 //bp
		ADD X2, X2, #16
		LDR X7, [X1,8]
		LDR X8, [X2,8]
		SUB X9, X9, #1
		CBNZ X9, abajo4
		LSL X26, X26, #8
	derecha5:
		SUB X7, X7, X25
		SUB X7, X7, X26
		LSL X25, X25, #8
		ADD X7, X7, X25
		STR X7, [X1,8]
		ADD X3, X1, #32  //bp
		CBZ X9, ganaste
	perdiste:
		MOV X4, 0X6550
		MOV X5, 0X6472
		LSL X5, X5, #16
		MOV X6, 0X7369
		LSL X6, X6, #32
		MOV X10, 0X6574
		LSL X10, X10, #48
        ADD X11, X4, X5
        ADD X11,X11, X6
        ADD X11, X11, X10
		STR X11, [X3,0]
        MOV X12, 0X3a20
        MOV X13, 0X28
		LSL X13, X13, #16
        ADD X14, X12, X13
		STR X14, [X3, 8]
		B end              // bp
    ganaste:
	    MOV X4, 0X6147
		MOV X5, 0X616e
		LSL X5, X5, #16
		MOV X6, 0X7473
		LSL X6, X6, #32
		MOV X10, 0X2165
		LSL X10, X10, #48
        ADD X11, X4, X5
        ADD X11,X11, X6
        ADD X11, X11, X10
		STR X11, [X3,0]
        MOV X12, 0X2d42
        MOV X13, 0X29
		LSL X13, X13, #16
        ADD X14, X12, X13
		STR X14, [X3, 8]
		ADD XZR, XZR, XZR //bp
        ADD XZR, XZR, XZR
        ADD XZR, XZR, XZR
	end:
	    ADD XZR, XZR, XZR
        ADD XZR, XZR, XZR
        
		
        //Instrucción NOP para acomodar la imagen
        ADD XZR, XZR, XZR
        ADD XZR, XZR, XZR
        ADD XZR, XZR, XZR


	b main


/*
arriba: 

abajo:

derecha:

izquierda:

ganaste:

perdiste:


      dashboard memory watch 0x00000000400803a0 128
	  step i 442

*/


