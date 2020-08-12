.data	                                                                    //58                                                                                                         
	laberinto: .dword 0x2b2d2d2d2d2d2d2b, 0x2b2d2d2d2d2d2d2d ,  0x20202020207c587c ,  0x7c2d20202020207c ,  0x202b2d2d207c207c ,  0x7c20202d2d2b207c ,  0x207c2020207c207c ,  0x7c202020207c207c ,  0x207c202d2d2b207c ,  0x2b2d2d20207c207c ,  0x207c20202020207c ,  0x7c232020207c2020 ,  0x2d2b2d2d2d2d2d2b ,  0x2b2d2d2d2d2b2d2d 
	estado: .dword 0x4e45204f4745554a, 0x21214f5352554320
	_stack_ptr: .dword _stack_end   // Get the stack pointer value from memmap definition
	
	t1: .dword 0x20202020207c587c 
	t2: .dword 0x202b2d2d207c587c 
	t3: .dword 0x207c2020207c587c
	t4: .dword 0x207c202d2d2b587c
	t5: .dword 0x207c20202020587c 
	t6: .dword 0x207c20202058207c 
	t7: .dword 0x207c20205820207c
	t8: .dword 0x207c20582020207c
	t9: .dword 0x207c58202020207c
	t10: .dword 0x207c582d2d2b207c 
	t11: .dword 0x207c5820207c207c
	t12: .dword 0x207c2058207c207c 
	t13: .dword 0x207c2020587c207c
	t14: .dword 0x202b2d2d587c207c  
	t15: .dword 0x20202020587c207c
	t16: .dword 0x20202058207c207c  
	t17: .dword 0x20205820207c207c
	t18: .dword 0x20582020207c207c
	t19: .dword 0x58202020207c207c 
	t20: .dword 0x582b2d2d207c207c 
	t21: .dword 0x587c2020207c207c
	t22: .dword 0x587c202d2d2b207c
	t23: .dword 0x587c20202020207c 
	t24: .dword 0x7c232020207c2058 
	t25: .dword 0x7c232020207c5820
	t26: .dword 0x2b2d2d20207c587c 
	t27: .dword 0x7c202020207c587c
	t28: .dword 0x7c20202d2d2b587c
	t29: .dword 0x7c2d20202020587c
	t30: .dword 0x7c2d20202058207c 
	t31: .dword 0x7c2d20205820207c 
	t32: .dword 0x7c2d20582020207c
	t33: .dword 0x7c2d58202020207c
	t34: .dword 0x7c20582d2d2b207c 
	t35: .dword 0x7c205820207c207c
	t36: .dword 0x7c202058207c207c 
	t37: .dword 0x2b2d2d58207c207c 
	t38: .dword 0x7c232058207c2020 
	t39: .dword 0x7c235820207c2020 

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
		LDR X19, [X1,0]
		LDR X20, =t1
		LDR X20, [X20, 0]
		SUB X18, X20, X19  
		CBZ X18, principal
		
    	ADD X1, X1, #16
		LDR X19, [X1,0]
		LDR X20, =t2
		LDR X20, [X20,0]
		SUB X18, X20, X19
		CBNZ X18, q1
	    ADD X2, X1, #16
		MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #8
		LSL X26, X26, #8
		B r1
	
		
	q1:	ADD X1, X1, #16
		LDR X19, [X1,0]
		LDR X20, =t3
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q2
	    ADD X2, X1, #16
		MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #8
		LSL X26, X26, #8
		B r2

	
	q2:	ADD X1, X1, #16
		LDR X19, [X1,0]
		LDR X20, =t4
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q3
	    ADD X2, X1, #16
		MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #8
		LSL X26, X26, #8
		B r3
		
	
		
	q3:	ADD X1, X1, #16
		LDR X19, [X1,0]
		LDR X20, =t5
		LDR X20, [X20,0]
		SUB X18, X20, X19
		CBNZ X18, q4
	    MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #8
		LSL X26, X26, #8
		LDR X7, [X1,0]
		B r4
		
		
	q4:	
		LDR X19, [X1,0]
		LDR X20, =t6
		LDR X20, [X20,0]
		SUB X18, X20, X19
		CBNZ X18, q5
	    MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #16
		LSL X26, X26, #24
		LDR X7, [X1,0]
		B r5
		
		
	q5:	
		LDR X19, [X1,0]
		LDR X20, =t7
		LDR X20, [X20,0]
		SUB X18, X20, X19
		CBNZ X18, q6
	    MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #24
		LSL X26, X26, #32
		LDR X7, [X1,0]
		B r6
		
	   
	q6: 
		LDR X19, [X1,0]
		LDR X20, =t8
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q7
	    MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #32
		LSL X26, X26, #40
		LDR X7, [X1,0]
		B r7
		
	q7: 
		LDR X19, [X1,0]
		LDR X20, =t9
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q8
	    MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #40
		LSL X26, X26, #48
		LDR X7, [X1,0]
		B r8
		
	q8:	SUB X1, X1, #16
		LDR X19, [X1,0]
		LDR X20, =t10
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q9
	    MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #40
		LSL X26, X26, #40
		SUB X2, X1, #16 
		LDR X8, [X2,0]
		LDR X7, [X1,0]
		B r9
		
	q9:	SUB X1, X1, #16
		LDR X19, [X1,0]
		LDR X20, =t11
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q10
        MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #40
		LSL X26, X26, #40
		LDR X7, [X1,0]
		SUB X2, X1, #16
		LDR X8, [X2,0]
		B r10
		
   q10: 
		LDR X19, [X1,0]
		LDR X20, =t12
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q11
        MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #32
		LSL X26, X26, #24
		MOV X27, 0X58
		LSL X27, X27, #24
		LDR X7, [X1,0]
		SUB X2, X1, #16
		LDR X8, [X2,0]
		B r11
		
   q11:
		LDR X19, [X1,0]
		LDR X20, =t13
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q12
        MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #24
		LSL X26, X26, #16
		MOV X27, 0X58
		LSL X27, X27, #16
		SUB X2, X1, #16
		LDR X8, [X2, 0]
		LDR X7, [X1,0]
		B r12
		
   q12:	SUB X1, X1, #16
		LDR X19, [X1,0]
		LDR X20, =t14
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q13
        MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #24
		LSL X26, X26, #24
		MOV X27, 0X58
		LSL X27, X27, #16
		SUB X2, X1, #16
		LDR X8, [X2, 0]
		LDR X7, [X1,0]
		B r13
		
   q13:	SUB X1, X1, #16
		LDR X19, [X1,0]
		LDR X20, =t15
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q14
        MOV X25, 0X58
		LSL X25, X25, #24
		MOV X27, 0X58
		LSL X27, X27, #16
		LDR X7, [X1,0]
		B r14
		
   q14: 
		LDR X19, [X1,0]
		LDR X20, =t16
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q15
        MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #32
		LSL X26, X26, #48
		MOV X27, 0X58
		LSL X27, X27, #16
		LDR X7, [X1,0]
		B r15
		
   q15:	
		LDR X19, [X1,0]
		LDR X20, =t17
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q16
        MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #40
		LSL X26, X26, #56
		MOV X27, 0X58
		LSL X27, X27, #16
		LDR X7, [X1,0]
		B r16
		
   q16:	
		LDR X19, [X1,0]
		LDR X20, =t18
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q17
        MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #48
		LSL X26, X26, #56
		MOV X27, 0X58
		LSL X27, X27, #16
		LDR X7, [X1,0]
		ADD X2, X1, #16
		LDR X8, [X2, 0]
		B r17
		
   q17:	
		LDR X19, [X1,0]
		LDR X20, =t19
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q18
        MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #56
		MOV X27, 0X58
		LSL X27, X27, #16
		LDR X7, [X1,0]
		ADD X2, X1, #16
		LDR X8, [X2,0]
		B r18
		
   q18:	ADD X1, X1, #16
		LDR X19, [X1,0]
		LDR X20, =t20
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q19
        MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #56
		LSL X26, X26, #56
		MOV X27, 0X58
		LSL X27, X27, #16
		ADD X2, X1, #16
		LDR X8, [X2,0]
		LDR X7, [X1,0]
		B r19
		
   q19:	ADD X1, X1, #16
		LDR X19, [X1,0]
		LDR X20, =t21
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q20
        MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #56
		LSL X26, X26, #56
		MOV X27, 0X58
		LSL X27, X27, #16
		ADD X2, X1, #16
		LDR X8, [X2,0]
		LDR X7, [X1,0]
		B r20
		
   q20:	ADD X1, X1, #16
		LDR X19, [X1,0]
		LDR X20, =t22
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q21
        MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #56
		LSL X26, X26, #56
		MOV X27, 0X58
		LSL X27, X27, #16
		ADD X2, X1, #16
		LDR X8, [X2,0]
		LDR X7, [X1,0]
		B r21
		
   q21: ADD X1, X0, #80
		LDR X19, [X1,0]
		LDR X20, =t23
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q22
        MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #56
		LSL X26, X26, #56
		MOV X27, 0X58
		LSL X27, X27, #16
		ADD X2, X1, #16
		LDR X8, [X2,0]
		LDR X7, [X1,0]
		B r22
		
		
  q22:  
		LDR X19, [X1,8]
		LDR X20, =t24
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q23
        MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #16
		LSL X26, X26, #24
		MOV X27, 0X58
		LSL X27, X27, #16
		ADD X2, X1, #16
		LDR X8, [X2,6]
		LDR X7, [X1, 6]
		B r23
		
  q23:  
		LDR X19, [X1,8]
		LDR X20, =t25
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q24
        MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #24
		LSL X26, X26, #32
		MOV X27, 0X58
		LSL X27, X27, #16
		SUB X2, X1, #16
		LDR X8, [X2,8]
		LDR X7, [X1, 8]
		B r24
		
   q24: SUB X1, X1, #16
		LDR X19, [X1,8]
		LDR X20, =t26
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q25
        MOV X25, 0X58
		MOV X26, 0X20
		MOV X27, 0X58
		LSL X25, X25, #8
		LSL X26, X26, #8
		LSL X27, X27, #16
		SUB X2, X1, #16
		LDR X8, [X2,8]
		LDR X7, [X1, 8]
		B r25
		
   q25: SUB X1, X1, #16
		LDR X19, [X1,8]
		LDR X20, =t27
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q26
        MOV X25, 0X58
		MOV X26, 0X20
		LSL X25, X25, #8
		LSL X26, X26, #8
		MOV X27, 0X58
		LSL X27, X27, #16
		SUB X2, X1, #16
		LDR X8, [X2,8]
		LDR X7, [X1, 8]
		B r26
		
	q26: SUB X1, X1, #16
		LDR X19, [X1,8]
		LDR X20, =t28
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q27
        MOV X25, 0X58
		MOV X26, 0X20
		MOV X27, 0X58
	    LSL X25, X25, #8
		LSL X26, X26, #8
		LSL X27, X27, #16
		SUB X2, X1, #16
		LDR X8, [X2,8]
		LDR X7, [X1, 8]
		B r27
		
	q27: SUB X1, X1, #16
		LDR X19, [X1,8]
		LDR X20, =t29
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q28
        MOV X25, 0X58
		MOV X26, 0X20
		MOV X27, 0X58
		LSL X25, X25, #8
		LSL X26, X26, #8
		LSL X27, X27, #16
		SUB X2, X1, #16
		LDR X8, [X2,8]
		LDR X7, [X1, 8]
		B r28
		
	q28: 
		LDR X19, [X1,8]
		LDR X20, =t30
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q29
        MOV X25, 0X58
		MOV X26, 0X20
		MOV X27, 0X58
		LSL X25, X25, #16
		LSL X26, X26, #24
		LSL X27, X27, #16
		SUB X2, X1, #16
		LDR X8, [X2,8]
		LDR X7, [X1, 8]
		B r29
		
	q29: 
		LDR X19, [X1,8]
		LDR X20, =t31
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q30
        MOV X25, 0X58
		MOV X26, 0X20
		MOV X27, 0X58
		LSL X25, X25, #24
		LSL X26, X26, #32
		LSL X27, X27, #16
		SUB X2, X1, #16
		LDR X8, [X2,8]
		LDR X7, [X1, 8]
		B r30
		
	q30: 
		LDR X19, [X1,8]
		LDR X20, =t32
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q31
        MOV X25, 0X58
		MOV X26, 0X20
		MOV X27, 0X58
		LSL X25, X25, #32
		LSL X26, X26, #40
		LSL X27, X27, #16
		SUB X2, X1, #16
		LDR X8, [X2,8]
		LDR X7, [X1, 8]
		B r31
		
	q31:
		LDR X19, [X1,8]
		LDR X20, =t33
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q32
        MOV X25, 0X58
		MOV X26, 0X20
		MOV X27, 0X58
		LSL X25, X25, #40
		LSL X26, X26, #48
		LSL X27, X27, #16
		ADD X2, X1, #16
		LDR X8, [X2,8]
		LDR X7, [X1, 8]
		B r32
		
	q32: ADD X1, X1, #16
		LDR X19, [X1,8]
		LDR X20, =t34
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q33
        MOV X25, 0X58
		MOV X26, 0X20
		MOV X27, 0X58
		LSL X25, X25, #40
		LSL X26, X26, #40
		LSL X27, X27, #16
		ADD X2, X1, #16
		LDR X8, [X2,8]
		LDR X7, [X1, 8]
		B r33
		
	q33: ADD X1, X1, #16
		LDR X19, [X1,8]
		LDR X20, =t35
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q34
        MOV X25, 0X58
		MOV X26, 0X20
		MOV X27, 0X58
		LSL X25, X25, #40
		LSL X26, X26, #40
		LSL X27, X27, #16
		ADD X2, X1, #16
		LDR X8, [X2,8]
		LDR X7, [X1, 8]
		B r34
		
	q34:
		LDR X19, [X1,8]
		LDR X20, =t36
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q35
        MOV X25, 0X58
		MOV X26, 0X20
		MOV X27, 0X58
		LSL X25, X25, #32
		LSL X26, X26, #24
		LSL X27, X27, #24
		ADD X2, X1, #16
		LDR X8, [X2,8]
		LDR X7, [X1, 8]
		B r35
		
	q35: ADD X1, X1, #16
		LDR X19, [X1,8]
		LDR X20, =t37
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q36
        MOV X25, 0X58
		MOV X26, 0X20
		MOV X27, 0X58
		LSL X25, X25, #32
		LSL X26, X26, #32
		LSL X27, X27, #24
		ADD X2, X1, #16
		LDR X8, [X2,8]
		LDR X7, [X1, 8]
		B r36
		
	q36: ADD X1, X1, #16
		LDR X19, [X1,8]
		LDR X20, =t38
		LDR X20, [X20, 0]
		SUB X18, X20, X19
		CBNZ X18, q37
        MOV X25, 0X58
		MOV X26, 0X20
		MOV X27, 0X58
		LSL X25, X25, #32
		LSL X26, X26, #16
		LSL X27, X27, #24
		ADD X2, X1, #16
		LDR X8, [X2,8]
		LDR X7, [X1, 8]
		B r37
		
	q37: ADD X1, X0, #80
	     LDR X19, [X1,8]
		 LDR X20, =t39
		 LDR X20, [X20, 0]
		 SUB X18, X20, X19
		 CBZ X18, ganaste
		 
	B perdiste
		
	principal:
	     ADD X2, X1, #16
		 MOV X25, 0X58
		 MOV X26, 0X20
		 LSL X25, X25, #8
		 LSL X26, X26, #8
		 BL abajo1
	r1:	 BL abajo1
	r2:	 BL abajo1
	r3:	 BL abajo1
	r4:	 LSL X26, x26, #8
		 BL derecha1
	r5:	 BL derecha1
	r6:	 BL derecha1
	r7:	 BL derecha1
	r8:	 SUB X2, X1, #16 
		 LDR X8, [X2,0]
		 LSR X26, X26, #8 
		 BL arriba1
	r9:	 BL arriba1
	r10: MOV X27, 0X58
		 LSL X27, X27, #32
		 LSR X26, X26, #8
		 BL izquierda1
	r11: BL izquierda1
	r12: LSL X26, X26, #8
		 BL arriba1
	r13: BL arriba1
	r14: MOV X26, 0X20
		 LSL X26, X26, #32
	     BL derecha1
	r15: BL derecha1
	r16: BL derecha1
	r17: BL derecha1
	r18: ADD X2, X1, #16
		 LDR X8, [X2,0] 
		 MOV X26, 0X20
		 LSL X26, X26, #56
		 BL abajo1 
	r19: BL abajo1
	r20: BL abajo1
	r21: BL abajo1
	r22: LDR X7, [X1, 6]
		 LSR X25, X25, #48
		 LSR X26, X26, #40
		 BL derecha3
	r23: BL derecha3
	r24: LDR X7, [X1,#8]
		 SUB X2, X1, #16
		 LDR X8, [X2,#8]
		 LSR X25, X25, #16
		 LSR X26, X26, #24
	     BL arriba2
	r25: BL arriba2
	r26: BL arriba2
	r27: BL arriba2
	r28: LSL X26, X26, #8
	     BL derecha2
	r29: BL derecha2
	r30: BL derecha2
	r31: BL derecha2
	r32: ADD X2, X1, #16
         LDR X8, [X2, 8]
		 LSR X26, X26, #8
	     BL abajo2
	r33: BL abajo2
	r34: LSR X26, X26, 8 
		 LSL X27, X27, #16
		 BL izquierda2
	r35: LSL X26, X26, #8
		 BL abajo2
	r36: BL abajo2
	r37: LSL X26, X26, #8
		 BL derecha2
		 B ganaste
		 
		
        //Instrucción NOP para acomodar la imagen

	b main

arriba1:
        SUB X7, X7, X25
		STR X7, [X1,0]
		SUB X8, X8, X26
		ADD X8, X8, X25
		STR X8, [X2,0]
		SUB X1, X1, #16 
		SUB X2, X2, #16
		LDR X7, [X1,0]
		LDR X8, [X2,0]
		BR X30

arriba2:
        SUB X7, X7, X25
		STR X7, [X1,8]
		SUB X8, X8, X26
		ADD X8, X8, X25
		STR X8, [X2,8]
		SUB X1, X1, #16 
		SUB X2, X2, #16
		LDR X7, [X1,8]
		LDR X8, [X2,8]
		BR X30

abajo1:
        LDR X7, [X1,0]
		LDR X8, [X2,0]
        SUB X7, X7, X25
		STR X7, [X1,0]
		SUB X8, X8, X26
		ADD X8, X8, X25
		STR X8, [X2, 0]
		ADD X1, X1, #16 
		ADD X2, X2, #16
		LDR X7, [X1,0]
		LDR X8, [X2,0]
		BR X30
		
abajo2:
        LDR X7, [X1,8]
		LDR X8, [X2,8]
        SUB X7, X7, X25
		STR X7, [X1,8]
		SUB X8, X8, X26
		ADD X8, X8, X25
		STR X8, [X2, 8]
		ADD X1, X1, #16 
		ADD X2, X2, #16
		LDR X7, [X1,8]
		LDR X8, [X2,8]
		BR X30

derecha1:
        SUB X7, X7, X25
		SUB X7, X7, X26
		LSL X25, X25, #8
		LSL X26, X26, #8
		ADD X7, X7, X25
		STR X7, [X1,0]
		BR X30
		
derecha2:
         SUB X7, X7, X25
		SUB X7, X7, X26
		LSL X25, X25, #8
		LSL X26, X26, #8
		ADD X7, X7, X25
		STR X7, [X1,8]
		BR X30
		
derecha3:
		SUB X7, X7, X25
		SUB X7, X7, X26
		LSL X25, X25, #8
		LSL X26, X26, #8
		ADD X7, X7, X25
		STR X7, [X1,6]
		BR x30

izquierda1:
         SUB X7, X7, X25
		SUB X7, X7, X26
		ADD X7, X7, X27
		STR X7, [X1,0]
		LSR X25, X25, #8
		LSR X26, X26, #8
		LSR X27, X27, #8
		BR X30
		
izquierda2:
         SUB X7, X7, X25
		SUB X7, X7, X26
		ADD X7, X7, X27
		STR X7, [X1,8]
		LSR X25, X25,#8
		LSR X26, X26, #8
		LSR X27, X27, #8
		BR X30

ganaste: ADD X3, X0, #112
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
		B main

perdiste: ADD X3, X0, #112
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
		B main

// dashboard memory watch 0x0000000040080cd0 128
