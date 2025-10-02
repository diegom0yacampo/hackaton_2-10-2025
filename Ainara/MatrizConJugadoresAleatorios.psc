Algoritmo MatrizConJugadoresAleatorios
	// Definir constantes para el tamaño de la matriz y la cantidad de jugadores
	Definir dimensionMatriz Como Entero
	Definir cantidadJugadores Como Entero
	dimensionMatriz <- 10
	cantidadJugadores <- 10
	
	// Declarar la matriz del tablero
	Definir tablero Como Caracter
	Dimension tablero[dimensionMatriz, dimensionMatriz]
	
	// Inicializar el tablero vacío, con un punto "."
	Definir filaActual, columnaActual Como Entero
	Para filaActual <- 1 Hasta dimensionMatriz Con Paso 1 Hacer
		Para columnaActual <- 1 Hasta dimensionMatriz Con Paso 1 Hacer
			tablero[filaActual, columnaActual] <- "."
		FinPara
	FinPara
	
	// Colocar jugadores "B" en posiciones aleatorias sin repetir
	Definir jugadoresColocados Como Entero
	Definir filaAleatoria, columnaAleatoria Como Entero
	jugadoresColocados <- 0
	
	Mientras jugadoresColocados < cantidadJugadores Hacer
		// Generar coordenadas aleatorias entre 1 y 10
		filaAleatoria <- Aleatorio(1, dimensionMatriz)
		columnaAleatoria <- Aleatorio(1, dimensionMatriz)
		
		// Verificar si la posición está vacía
		Si tablero[filaAleatoria, columnaAleatoria] = "." Entonces
			tablero[filaAleatoria, columnaAleatoria] <- "B"
			jugadoresColocados <- jugadoresColocados + 1
		FinSi
	FinMientras
	
	// Mostrar el tablero con los jugadores
	Escribir "=== TABLERO CON JUGADORES ==="
	Para filaActual <- 1 Hasta dimensionMatriz Con Paso 1 Hacer
		Para columnaActual <- 1 Hasta dimensionMatriz Con Paso 1 Hacer
			Escribir Sin Saltar tablero[filaActual, columnaActual], " "
		FinPara
		Escribir "" // Salto de línea después de cada fila
	FinPara
FinAlgoritmo