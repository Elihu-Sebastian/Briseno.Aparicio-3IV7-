Algoritmo Almacen
	Definir producto, Reporte Como texto
	Definir codigodeproducto, cantidad Como Entero 
	Definir precio Como Real
	i <- 1
	
	Dimension producto[100];
	Dimension codigodeproducto[100];
	Dimension cantidad[100];
	Dimension precio[100];
	Dimension Reporte[100];
	//tengo que crear un menu de seleccion
	Mientras Op <> 6 Hacer
		Escribir "1- Ingresa un nuevo producto"
		Escribir "2- Actualiza un producto"
		Escribir "3- Consulta el inventario"
		Escribir "4- Generar un reporte"
		Escribir "5- Ver reportes"
		Escribir "6- Salir"
		Leer Op
		
		Segun Op Hacer
			Caso 1:
				Escribir "Ingresa un producto"
				Leer producto[i];
				Escribir "Ingresa el codigo del producto"
				Leer codigodeproducto[i];
				Escribir "Ingresa una cantidad"
				Leer cantidad[i];
				Escribir "Ingrea el precio"
				Leer precio[i];
			Caso 2:
				Escribir "Ingresa el codigo del producto actualixado"
				Leer codigodeproducto[i];
				Escribir "Ingresa la nueva cantidad"
				Leer cantidad[i];
			Caso 3:
				Escribir "Consultar inventario"
				Escribir "nombre del producto ", producto[i];
				Escribir "codigo del producto ", codigodeproducto[i];
				Escribir "precio del producto ", precio[i];
				Escribir "cantidad del producto ", cantidad[i];
			Caso 4:
				Escribir "Escribe un reporte"
				Leer Reporte[i];
			Caso 5:
				Escribir "Estos son todos los reportes ", Reporte[i];
			Caso 6:
				Escribir "Hasta Pronto patito miau miau"
		Fin Segun
	Fin Mientras

FinAlgoritmo
