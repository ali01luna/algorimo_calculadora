Algoritmo unamad
		definir nomEstudiante Como Caracter
		definir carrera como entero 
		definir confecha Como numero
		definir matricula, mensualidad como entero 
		
		escribir "///////////Universidad Nacinal Amazonica de Madre de Dios////////"
		escribir "sistema de pagos y pensiones"
		escribir "ingrese el nombre del estudiante: " Sin Saltar
		leer nomEstudiante
		
		escribir "¿que carrera estudias?"
		escribir "[1] computacion en informatica"
		escribir "[2] secretariado"
		escribir "[3] administracion"
		escribir "seleccione la opcion: " Sin Saltar
		leer carrera
		si (carrera = 1) entonces 
			matricula = 300
			mensualidad = 450
			si (carrera = 2) Entonces
				matricula = 200
				mensualidad = 350
			sino 
				matricula = 250
				mesualidad = 400
			FinSi
		FinSi
		
		escribir "¿el estudiante esta en el rango de la fecha permitida?" sin saltar 
		Escribir "(1) = si (0) = no " Sin Saltar
		leer confecha
		
		si (confecha = 1) Entonces
			definir concepto Como Entero
			escribir "el estudiante esta dentro del rango de la fecha permitida"
			escribir "¿que concepto desea pagar?"
			escribir "[1] matricula o mensualidad "
			Escribir "[2] matricula y mensualidad "
			escribir "[3] todo el semestre"
			escribir "[4] toda la carrera"
			escribir "seleccione el concepto de a pagar: " sin saltar
			leer concepto
			si (concepto = 1 ) Entonces
				//condicion 1 pago de matricula o mensualidad no hay descuemto
				Definir  opcion Como Entero
				Escribir "elige la opcion para pagar: "
				Escribir "[1] matricula "
				Escribir "[2] mensualidad "
				si opcion = 1 Entonces
					Escribir " usted debe pagar : " matricula
				SiNo
					escribir "usted debe pagar : " mesualidad
					
				FinSi
			FinSi
			
			si(concepto=2) Entonces
				//condicion 2:pago de matricula + hasta 4 mensualidad 5 % de secuento
				Definir nromensualidades Como Entero
				Escribir "¿cuantas mesualidades desea pagar? "
				Leer nromensualidades
				Si (NroMensualidades >= 2 )  Y (NroMensualidades <= 4 )  Entonces
					Definir NueMatricula, NueMensualidad, MontoPagar Como Real
					NueMatricula = Matricula * 0.05
					NueMensualidad = Mensualidad * 0.10
					MontoPagar = (Matricula-NueMatricula) + ((Mensualidad - NueMensualidad)* NroMensualidades)
					Escribir "Usted debe pagar: " MontoPagar
				siNo
					Escribir "No se puede realizar la operación"
			FinSi
			si(concepto = 3 )Entonces
				//Condición 3: Todo un semestre + matrícula; 
				//descuento del 20% al monto total de pensiones 
				//y el 10% a la matricula.
				Definir NueMatricula, NueMensualidad, MontoPagar Como Real
				NueMatricula = Matricula * 0.10
				NueMensualidad = Mensualidad * 0.20
				MontoPagar = (Matricula-NueMatricula) + ((Mensualidad - NueMensualidad)*5)
				Escribir "Usted debe pagar: " MontoPagar
				
			FinSi
			si (concepto = 4 ) Entonces
				//Condición 4: Toda la carrera descuento del 40% al 
				//monto total de pensiones y el 20% a las matrículas.
				Definir NueMatricula, NueMensualidad, MontoPagar Como Real
				NueMatricula = Matricula * 0.20
				NueMensualidad = Mensualidad * 0.40
				MontoPagar = ((Matricula-NueMatricula)*6) + ((Mensualidad - NueMensualidad)* 30)
				Escribir "Usted debe pagar: " MontoPagar
				
			FinSi
			
		sino 
			Escribir "No se puede realizar la operación"
		Fin Si
	SiNo
		
		escribir "el estudiante esta fuera del rango de la fecha permitida"
		//si no esta dentro del rango
		//delas fechas de matricula y pago de pensiones(cuotas),
		//el sistema le genera el 1% de multa por retraso de la mensualidad ,
		//de lo contrario se le pueden aplicar las siguientes condiciones 
		definir multa como real 
		multa = mensualidad * 0.01
		mensualidad = mesualidad + multa
		escribir " la nueva mensualidad es: " mensualidad
    FinSi
FinAlgoritmo
