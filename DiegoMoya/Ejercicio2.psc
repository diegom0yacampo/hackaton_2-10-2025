Algoritmo Juego_Homer
    Dimension tablero[10,10]
    Definir filaH, columnaH Como Entero
    Definir i, j Como Entero
    Definir filaAnterior, columnaAnterior Como Entero
	
    // Iniciar tablero con 'X'
    Para i = 1 Hasta 10 Con Paso 1 Hacer
        Para j = 1 Hasta 10 Con Paso 1 Hacer
            tablero[i,j] = 'X'
        FinPara
    FinPara
	
    // Posicion inicial aleatoria de la 'H'
    filaH = Aleatorio(1,10)
    columnaH = Aleatorio(1,10)
    tablero[filaH,columnaH] = 'H'
		
        // Imprimir tablero
        Para i = 1 Hasta 10 Con Paso 1 Hacer
            Para j = 1 Hasta 10 Con Paso 1 Hacer
                Escribir Sin Saltar tablero[i,j], " "
            FinPara
            Escribir ""
        FinPara
		
 
FinAlgoritmo
