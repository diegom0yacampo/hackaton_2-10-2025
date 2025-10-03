//Andres Ara
//02/10/2025
//RELLENAR TABLERO CON X 10x10, Homer Debe Caer en una casilla aleatoria y poder moverse hacia la derecha
Algoritmo STAR_WARS
	Definir largo, ancho, largo_homer, ancho_homer Como Entero; //Definimos Longitud matriz
	largo = 10 //Inicializamos Longitud matriz
	ancho = 10 //Inicializamos Ancho matriz
	Definir tablero, user_input Como Caracter
	Definir salir Como Logico
	Dimension tablero[largo, ancho] //Definimos el matriz de Longitud = largo
	largo_homer = Aleatorio(1,10)
	ancho_homer = Aleatorio(1,10)
	tablero[largo_homer,ancho_homer] = "H"
	Mientras salir = Falso //Para que el juego se ejecute hasta que el usuario quiera salir
		Para i = 1 Hasta largo Hacer //Pasamos por todos los valores del matriz por toda su longitud y le damos un numero aleatorio
			Para j=1 Hasta ancho
				Si i <> largo_homer o j <> ancho_homer
					tablero[i,j] = "x" 
				FinSi
				Escribir tablero[i,j], " " , Sin Saltar;
			FinPara
			Escribir "";
		FinPara
		//Menu del juego
		Escribir "¿Quieres mover a homer?"
		Escribir "(1) Mover a homer a la derecha";
		Escribir "(3) Salir del programa";
		Leer user_input;
		Si user_input == "1"
			Si ancho_homer < 10
				tablero[largo_homer,ancho_homer] = "x"
				ancho_homer = ancho_homer + 1
				tablero[largo_homer,ancho_homer] = "H"
				Escribir "JOB DONE"
			SiNo
				Escribir "Homer ya esta en el borde Derecho"
			FinSi
		FinSi
		Si user_input == "3"
			salir = Verdadero
			Escribir "Saliendo del programa"
		FinSi
		Si user_input <> "1" y user_input <> "3"
			Escribir "Debes introducir un numero correspondiente a una accion en la lista"
			Esperar 2 Segundos
			Limpiar Pantalla		
		FinSi
	FinMientras
	
FinAlgoritmo