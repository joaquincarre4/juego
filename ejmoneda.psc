Algoritmo EjMoneda
	
	Definir n1, ahorros, resp, apuesta, apuestaConseguida, apuestaPerdida, caraCruz, bolsillo como entero;
	Definir respuesta como texto;
	
	Escribir " ";
	Escribir "Escribe -100- para jugar.";
	Escribir " ";
	Leer resp;
	Escribir " ";
	
	ahorros = 100;
	
	Si resp = 100 Entonces
		
		Repetir
			
			bolsillo <- ahorros;
			
			n1 <- 0;
			
			Escribir " ";
			Escribir "¿Cuánto quieres apostar?";
			Escribir " ";
			Leer apuesta;
			Escribir " ";
			
			Si apuesta > ahorros Entonces
				Escribir " ";
				Escribir "Tienes " ahorros ", así que no puedes aportar " apuesta ".";
				Escribir " ";
			SiNo
				
				Escribir "Escribe -0- si crees que va a salir cara, -1- si crees que saldrá cruz.";
				Escribir " ";
				Leer caraCruz;
				Escribir " ";
				
				n1 <- Azar(2);
				
				Si n1 = caraCruz Entonces
					ahorros <- bolsillo + apuesta;
					Si caraCruz = 0 Entonces
						Escribir " ";
						Escribir "Acertaste al apostar " apuesta " a que saldría cara.";
						Escribir " ";
					FinSi
					Si caraCruz = 1 Entonces
						Escribir " ";
						Escribir "Acertaste al apostar " apuesta " a que saldría cruz.";
						Escribir " ";
					FinSi
					Escribir " ";
					Escribir "Enhorabuena, has ganado " apuesta ", ahora tienes " ahorros ".";
					Escribir " ";
				SiNo
					ahorros <- bolsillo - apuesta;
					Si caraCruz = 0 Entonces
						Escribir " ";
						Escribir "Te equivocaste al apostar " apuesta " a que saldría cara.";
						Escribir " ";
					FinSi
					Si caraCruz = 1 Entonces
						Escribir " ";
						Escribir "Te equivocaste al apostar " apuesta " a que saldría cruz.";
						Escribir " ";
					FinSi
					Escribir " ";
					Escribir "Lo siento, has perdido " apuesta ", ahora tienes " ahorros ".";
					Escribir " ";
				FinSi
			FinSi
			
			Si ahorros > 0 Entonces
				Escribir " ";
				Escribir "¿Quieres volver a intentarlo?(Escribe -no- para salir)";
				Escribir " ";
				Leer respuesta;
				Escribir " ";
			FinSi
			
		Hasta Que respuesta = "no" O ahorros <= 0;
		Escribir " ";
		Escribir "Ya no tienes dinero, vuelve cuando lo tenga.";
		Escribir " ";
		
	SiNo
		Escribir " ";
		Escribir "Si quieres jugar, debes escribir -100- al principio.";
		Escribir " ";
	FinSi
	
FinAlgoritmo

