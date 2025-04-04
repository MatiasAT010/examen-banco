ALGORITMO banco_humilde
    DEFINIR saldo_M COMO REAL
    DEFINIR saldo_A COMO REAL
    DEFINIR saldo_B Como Real
	DEFINIR opcion COMO ENTERO
	DEFINIR subopcion COMO ENTERO
	DEFINIR cantidad COMO REAL
	DEFINIR xd COMO LOGICO

    saldo_M<- 0
    saldo_A <- 0
    saldo_B <- 0
	cantidad <- 0
	xd<-Verdadero
    
    Mientras xd HACER 
        ESCRIBIR "Seleccione una opción:"
		ESCRIBIR " " 
        ESCRIBIR "1. Depositar plata en la cuenta master"
        ESCRIBIR "2. Transferir de mastera cuenta A"
        ESCRIBIR "3. Transferir de master a cuenta B"
        ESCRIBIR "4. Transferir entre cuenta a y b"
        ESCRIBIR "5. Consultar saldos"
        ESCRIBIR "6. Salir"
		
		Leer opcion
        
        Si opcion == 1 Entonces
            ESCRIBIR"Ingrese cantidad a depositar en master:"
            LEER cantidad
            saldo_M <- saldo_M + cantidad
		FINSI 	
			SI opcion == 2 Entonces
				ESCRIBIR "Ingrese cantidad a transferir de Master a cuenta A:"
			LEER cantidad
				SI cantidad <= saldo_M Entonces
					saldo_M <- saldo_M - cantidad
					saldo_A <- saldo_A + cantidad
				SINO
					ESCRIBIR "No tienes la suficiente plata en la master"
				FINSI 
			FINSI
				
				SI opcion == 3 Entonces
					ESCRIBIR "Ingrese cantidad a transferir de Master a cuenta B:"
					LEER cantidad
					SI cantidad <= saldo_M    Entonces
						
						saldo_M <- saldo_M - cantidad
						saldo_B <- saldo_B + cantidad
					SINO
						ESCRIBIR "No tienes la suficiente plata en la master"
					FINSI 
				FINSI
					
					Si opcion == 4 Entonces
						ESCRIBIR "Seleccione la transferencia:"
						ESCRIBIR "1. De la cuenta a la b"
						ESCRIBIR "2. De la cuenta b a la a"
						Leer subopcion
						
						ESCRIBIR "Ingrese la plata que quiere transferir"
						Leer cantidad
					FINSI
						Si subopcion == 1 Entonces
							Si cantidad <= saldo_A Entonces
								saldo_A <- saldo_A - cantidad
								saldo_B <- saldo_B + cantidad
							Sino
								Mostrar "No tienes la suficiente plata en la cuenta A"
							FinSi
						FinSi
						
						Si subopcion == 2 Entonces
							Si cantidad <= saldo_B Entonces
								saldo_B <- saldo_B - cantidad
								saldo_A <- saldo_A + cantidad
							SINO
								ESCRIBIR "Fondos insuficientes"
							FINSI
						FINSI
						
						SI opcion == 5 Entonces
							ESCRIBIR "Saldo Master: ", saldo_M
							ESCRIBIR "Saldo Cuenta A: ", saldo_A
							ESCRIBIR "Saldo Cuenta B: ", saldo_B
							
							SI opcion == 6 Entonces
							ESCRIBIR "Gracias por usar elbanco humilde"
							SINO 
								ESCRIBIR "selecciona una opcion"
							FINSI
							
								
							FINSI
						
	FINMIENTRAS				
FINALGORITMO
