Algoritmo Reservar
	Definir reservas Como Entero
    Definir habitaciones Como Entero
    Definir ocupadas Como Entero
    Definir capacidad Como Entero
    Definir opcion Como Entero
    Definir fechaInicio Como Cadena
    Definir fechaFin Como Cadena
    Definir numReserva Como Entero
    Definir habitacionesDisponibles Como Entero
    Definir ocupacion Como Real
    
    reservas <- 0
    habitaciones <- 10  // Número total de habitaciones
    ocupadas <- 0
    capacidad <- 10     // Capacidad máxima de habitaciones
    habitacionesDisponibles <- 0
	
    Mientras inf <> 4 Hacer
        Escribir "Seleccione una opción:"
        Escribir "1. Registrar Reserva"
        Escribir "2. Cancelar Reserva"
        Escribir "3. Consultar Disponibilidad"
        Escribir "4. Gestión de Ocupación"
        Escribir "5. Salir"
        Leer inf
		
        Segun inf Hacer
            1:
                Escribir "Ingrese la fecha de inicio (DD/MM/AAAA):"
                Leer fechaInicio
                Escribir "Ingrese la fecha de fin (DD/MM/AAAA):"
                Leer fechaFin
                
                Si ocupadas < habitaciones Entonces
                    reservas <- reservas + 1
                    ocupadas <- ocupadas + 1
                    Escribir "Reserva confirmada. Número de reserva: ", reservas
                Sino
                    Escribir "No hay habitaciones disponibles en esas fechas."
                FinSi
				
            2:
                Escribir "Ingrese el número de reserva a cancelar:"
                Leer numReserva
                
                Si numReserva <= reservas Entonces
					reservas <- reservas -1
                    ocupadas <- ocupadas - 1
                    Escribir "Reserva ", numReserva, " cancelada."
                Sino
                    Escribir "Número de reserva no válido."
                FinSi
				
            3:
                Escribir "Habitaciones disponibles:"
                habitacionesDisponibles <- habitaciones - ocupadas
                Escribir habitacionesDisponibles, " habitaciones disponibles."
				
            4:
                ocupacion <- (ocupadas / habitaciones) * 100
                Escribir "Porcentaje de ocupación: ", ocupacion, "%"
                
            5:
                Escribir "Saliendo del sistema..."
                
            De Otro Modo:
                Escribir "Opción no válida. Intente de nuevo."
        Fin Segun
		FinMientras
FinAlgoritmo
