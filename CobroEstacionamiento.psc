Algoritmo cobroEstacionamiento
	Definir horaentrada, minutoentrada, horasalida, minutosalida Como Entero
	Definir totalhoras, totalminuto, minutostotalcobro Como Entero
	Definir totalcobro Como Entero
	
	//entrada de datos
	Escribir"Ingrese la hora de entrada (formato de 24 horas)"
	Leer horaentrada
	Escribir "Ingrese los minutos de entrada,(formato de 60 minutos)"
	Leer minutoentrada
	Escribir"Ingrese la hora de salida,formato de 24 horas"
	Leer horasalida
	Escribir "Ingrese los minutos de salida,formato de 60 minutos"
	Leer minutosalida
	
	//Proceso
	//calcular el tiempo total en minutos
	totalhoras= horasalida-horaentrada
	totalminuto=minutosalida-minutoentrada
	
	//tengo que empezar a evaluar los datos
	
	//si los minutos de salida son menores a las de entrada o la hora de salida es menor a la entrada 
	//hay que ajustar la hora y minutosalida
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
	minutosrestantes = totalminuto%60
	Si minutosrestantes > 0 Entonces
		fracciones15min = minutosrestantes //aqui se obtiene los 15
		//cobrar cada fraccion 
		totalcobro= totalcobro + fracciones15min * 4
		Escribir totalcobro
	Fin Si
	
	//mostrar el resutado
	Escribir "El total a pagar es de: ", totalcobro " pesos"
	
FinAlgoritmo
