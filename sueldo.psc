Algoritmo sueldoneto
	Escribir "ingresa el valor de horas trabajadas"
	Leer horas_trabajadas
	Escribir "ingresa el valor de tarifa por hora: "
	Leer tarifa
	sueldo_bruto = horas_trabajadas * tarifa
	impuesto = sueldo_bruto*0.8
	sueldo_neto = sueldo_bruto - impuesto
	Escribir "valor de tasas: " impuesto
	Escribir "valor de sueldo bruto: " sueldo_bruto
	escribir "valor de sueldo neto: " sueldo_neto
FinAlgoritmo
