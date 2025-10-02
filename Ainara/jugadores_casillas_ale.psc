Algoritmo jugadores_casillas_ale
	//Definimos variables
	Definir tablero Como Caracter
	Definir largo, ancho, largo_ale, ancho_ale, posi_largo, posi_ancho Como Entero
	Definir cantidad_jugadores, jugadores_colocados Como Entero
	//Inicializamos las variables
	largo <- 10
	ancho <- 10
	largo_ale <- Aleatorio(1,10)
	ancho_ale <- Aleatorio(1,10)
	cantidad_jugadores <- 10
	jugadores_colocados <- 0
	
	//dar las dimensiones al tablero
	Dimension tablero[largo,ancho]
	
	tablero[largo_ale, ancho_ale] = "B"
	
	Mientras jugadores_colocados < cantidad_jugadores
		
		Para posi_largo = 1 Hasta 10 Hacer
			Para posi_ancho = 1 Hasta 10 Hacer
				Si tablero[largo_ale,ancho_ale] = "." Entonces
					Escribir tablero[largo_ale, ancho_ale] = "B"
					jugadores_colocados = jugadores_colocados +1
				SiNo
					tablero[largo,ancho] <- "."
					Escribir tablero[largo,ancho], " " Sin Saltar
				FinSi
			FinPara
			Escribir  " "
		FinPara
	FinMientras
FinAlgoritmo
