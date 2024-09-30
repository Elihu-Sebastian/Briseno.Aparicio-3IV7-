Algoritmo Tiendita
	
	Definir producto Como texto
	 Definir codigodeproducto, cantidad Como Entero 
	Definir precio Como Real
	
	//tengo que crear un menu de seleccion
	Mientras Op <> 5 Hacer
		Escribir "1- Ingresa un nuevo producto"
		Escribir "2- Actualiza un producto"
		Escribir "3- Consulta el inventario"
		Escribir "4- Generar un reporte"
		Escribir "5- Salir"
		Leer Op
	

	
	Segun Op Hacer
		Caso 1:
			Escribir "Ingresa un producto"
			Leer producto
			Escribir "Ingresa el codigo del producto"
			Leer codigodeproducto
			Escribir "Ingresa una cantidad"
			Leer cantidad
			Escribir "Ingrea el precio"
			Leer precio
		Caso 2:
			Escribir "Ingresa el codigo del producto actualixado"
			Leer codigodeproducto
			Escribir "Ingresa la nueva cantidad"
			Leer cantidad
		Caso 3:
			Escribir "Consultar inventario"
			Escribir "nombre del producto ", producto
			Escribir "codigo del producto ", codigodeproducto
			Escribir "precio del producto ", precio
			Escribir "cantidad del producto ", cantidad
		Caso 4:
			Escribir "Habia un patito que dacia miau miau"

	Fin Segun
Fin Mientras
FinAlgoritmo
