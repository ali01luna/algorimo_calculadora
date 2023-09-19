Algoritmo aprueba_reprueba
	Definir  nota1, nota2,  nota3,   promedio Como Real
	Escribir "Ingrese calificacion :"
	Leer nota1
	Leer nota2
	Leer nota3
	promedio = redon(nota1 + nota2 + nota3)/3
	Si promedio >= 11 Entonces
		Escribir "El promedio es : " promedio " , el estudiante esta APROBADO "
	SiNo
		Escribir "El promedio es : " promedio " , el estudiante esta DESAPROBADO "
	Fin Si
FinAlgoritmo
