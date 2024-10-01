
	Funcion consulta(nombre, nacimiento,curp, sexo, i, contador)
		Si (contador > 0) Entonces
			Escribir "Registros totales: ", contador;
			Para F = 1 Hasta i Con Paso 1 Hacer
				Escribir nombre[F], "  ", curp[F], "  ", nacimiento[F], "  ", sexo[F];
			Fin Para
		SiNo
			Escribir "No hay registros"
		Fin Si
FinFuncion


Algoritmo Calcular_vida_1
	
	Definir nombre, sexo, curp Como cadena
	Definir año, i , contador, muerte,nacimiento, edad, actual Como Entero 
	Definir joven, viejo, muertos, nacer, anciana, vivas Como Real
	i = 1
	contador = 0
    vivas <- 0
	i = 1
	contador = 0
	
	Dimension nombre[100];
	Dimension sexo[100];
	Dimension nacimiento[100];
	Dimension curp[100];
	Dimension muerte[100];
	
	//tengo que crear un menu de seleccion
	Mientras inf <> 4 Hacer
		Escribir "1- Ingresar una persona"
		Escribir "2- Consulta general"
		Escribir "3- Consultar el año"
		Escribir "4- salir"
		Leer inf
		
		Segun inf Hacer
			Caso 1:
				Escribir "Ingresa el nombre de la persona ", i;
				Leer nombre[i];
				Escribir "Ingresa la fecha de nacimiento"
				Leer nacimiento[i];
				Si nacimiento[i] <= 0 Entonces
					Escribir "No puede escribir numeros negativos, ingrese nuevamente la fecha de nacimiento"
					Leer nacimiento[i];
				FinSi
				Escribir "Ingresa la fecha de muerte"
				Leer muerte[i];
				Si muerte[i] <= 0 Entonces
					Escribir "No puede escribir numeros negativos, ingrese nuevamente la fecha de nacimiento"
					Leer muerte[i];
				FinSi
				Escribir "Ingresa el curp de la persona"
				Leer curp[i];
				Escribir "Ingresa su sexualidad"
				Leer sexo[i];
				i = i+1
				contador= contador +1
			Caso 2:
				consulta(nombre, nacimiento, curp, sexo, i, contador)
			Caso 3:
				
				vivas <- 0
				joven <- 0
				viejo <- 0
				actual <- 0
				
				Escribir "Ingresa el año de interés:"
				Leer actual
				
				Si actual >= 0 Entonces
					Para i <- 1 Hasta i Hacer
						Si nacimiento[i] <= actual y muerte[i] >= actual Entonces
							vivas <- vivas + 1
							edad <- actual - nacimiento[i]
							
							Si joven = 0 O edad < joven Entonces
								joven <- edad
							FinSi
							
							Si viejo = 0 O edad > viejo Entonces
								viejo <- edad
							FinSi
						FinSi
					Fin Para
					Si vivas > 0 Entonces
						Escribir "Cantidad de personas vivas: ", vivas
						Escribir "Años de la persona más joven: ", joven
						Escribir "Años de la persona más anciana: ", viejo
					SiNo
						Escribir "No había personas vivas en ese año."
					FinSi
				Sino
					Si actual < 0 Entonces
						Escribir "Escribe una fecha valida"
					FinSi
				FinSi	
				
				
			Caso 4:
				Escribir "Gracias por utilizar este programa"
		FinSegun
	FinMientras
FinAlgoritmo
