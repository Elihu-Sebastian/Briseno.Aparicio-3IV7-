Funcion registro(nombre, nacimiento, curp, sexo, i)
	Escribir "Ingresa el nombre de la persona ", i;
	Leer nombre[i];
	Escribir "Ingresa la fecha de nacimiento"
	Leer nacimiento[i];
	Escribir "Ingresa el curp de la persona"
	Leer curp[i];
	Escribir "Ingresa su sexualidad"
	Leer sexo[i];
FinFuncion

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


Algoritmo Calcular_vida
	
	Definir nombre, sexo, nacimiento, curp Como cadena
	Definir año, i , contador Como Entero 
	Definir joven, viejo, muertos, actual, nacer, edad, anciana, vivas Como Real
	i = 1
	contador = 0
    vivas <- 0
	i = 1
	contador = 0
	
	Dimension nombre[100];
	Dimension sexo[100];
	Dimension nacimiento[100];
	Dimension curp[100];
	
	//tengo que crear un menu de seleccion
	Mientras inf <> 4 Hacer
		Escribir "1- Ingresar una persona"
		Escribir "2- Consulta general"
		Escribir "3- Consultar el año"
		Escribir "4- salir"
		Leer inf
		
		Segun inf Hacer
			Caso 1:
				registro(nombre, nacimiento, curp, sexo, i)
				i = i+1
				contador= contador +1
				
			Caso 2:
				consulta(nombre, nacimiento, curp, sexo, i, contador)
			Caso 3:
				Escribir "Ingresa la cantidad de personas registradas en el sistema"
				Leer personas
				Escribir "Ingresa el año de interés:"
				Leer actual
				
				joven <- 9999
				anciana <- -1
				
				// Ciclo para cada persona
				Para i <- 1 Hasta personas Hacer
					Escribir "Ingresa el año de nacimiento de la persona ", i
					Leer nacer
					
					// Calculamos la edad de la persona en el año de interés
					edad <- actual - nacer
					
					// Si la persona estaba viva (es decir, su edad es mayor o igual a 0)
					Si edad >= 0 y edad <= 89 Entonces
						vivas <- vivas + 1
						
						// Comprobar si es la persona más joven o más anciana
						Si edad < joven Entonces
							joven <- edad
						FinSi
						
						Si edad > anciana Entonces
							anciana <- edad
						FinSi
					FinSi
				FinPara
				Escribir "Número de personas vivas en el año ", actual, ": ", vivas
				Si vivas > 0 Entonces
					Escribir "Edad de la persona más joven: ", joven
					Escribir "Edad de la persona más anciana: ", anciana
				SiNo
					Escribir "No había personas vivas en ese año."
    FinSi
		FinSegun
	FinMientras
FinAlgoritmo
