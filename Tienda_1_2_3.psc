Algoritmo Tienda
	Definir horaentrada, minutoentrada, horasalida, minutosalida Como Entero
	Definir totalhoras, totalminuto, minutostotalcobro Como Entero
	Definir totalcobro Como Entero
	
	//entrada de datos
	Escribir"Ingrese la hora de entrada (formato de 24 horas)"
	Leer horaentrada
	Si horaentrada < 0 Entonces
		Escribir "No se puede escribir numeros negativos"
		Leer horaentrada
	FinSi
	Escribir "Ingrese los minutos de entrada,(formato de 60 minutos)"
	Leer minutoentrada
	Si minutoentrada < 0 Entonces
		Escribir "No se puede escribir numeros negativos"
		Leer minutoentrada
	FinSi
	Escribir"Ingrese la hora de salida,formato de 24 horas"
	Leer horasalida
	Si horasalida < 0 Entonces
		Escribir "No se puede escribir numeros negativos"
		Leer horasalida
	FinSi
	Escribir "Ingrese los minutos de salida,formato de 60 minutos"
	Leer minutosalida
	Si minutosalida < 0 Entonces
		Escribir "No se puede escribir numeros negativos"
		Leer minutosalida
	FinSi
	
	//Proceso
	//calcular el tiempo total en minutos
	totalhoras= horasalida-horaentrada
	totalminuto=minutosalida-minutoentrada
	
	//tengo que empezar a evaluar los datos
	
	//si los minutos de salida son menores a las de entrada o la hora de salida es menor a la entrada 
	//hay que ajustar la hora y minutosalida
	Si totalhoras < 0 Entonces
		totalhoras <- 24 - totalhoras
	FinSi
	
	
	Si totalminuto < 0 Entonces
		totalminuto = totalminuto + 60
		totalhoras = totalhoras - 1
	Fin Si
	

	//convertir todo a minutos
	
	totalminuto = (totalhoras*60) + totalminuto
	//vamos a calcular el cobro
	totalcobro = 0
	
	//calcular el cobro por la hora completa
	Si totalminuto >= 60 Entonces
		totalcobro = totalcobro + (totalminuto/60)*15
	Fin Si
	
	//calculra el cobro de cada fraccion
	minutosrestantes = totalminuto - (totalhoras*60)
	Si minutosrestantes > 0 Entonces
		fracciones15min = minutosrestantes //aqui se obtiene los 15
		//cobrar cada fraccion 
		totalcobro= totalcobro + 6
	Fin Si
	
	Si totalminuto < 15 Entonces
		totalcobro = 0
	FinSi
	//mostrar el resutado
	Escribir "El total a pagar es de: ", totalcobro " pesos"

FinAlgoritmo
