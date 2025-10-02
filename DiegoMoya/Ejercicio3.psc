Algoritmo Repartir_10_B_tablero_10x10
	Definir i, j, k, fila, col Como Entero
	Dimension tablero[10,10]
	
	// Inicializamos todas las casillas con 'X'
	Para i <- 1 Hasta 10 Hacer
		Para j <- 1 Hasta 10 Hacer
			tablero[i,j] <- "X"
		FinPara
	FinPara
	
	// Colocamos 10 'B' en posiciones aleatorias (pueden repetirse)
	Para k <- 1 Hasta 10 Hacer
		fila <- Aleatorio(1,10)
		col <- Aleatorio(1,10)
		tablero[fila,col] <- "B"
	FinPara
	
	// Mostrar tablero 
	Para i <- 1 Hasta 10 Hacer
		Para j <- 1 Hasta 10 Hacer
			Escribir Sin Saltar tablero[i,j], " "
		FinPara
		// salto de línea al final de cada fila
		Escribir "" 
	FinPara
FinAlgoritmo

