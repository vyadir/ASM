; Creado por Yadir Vega Espinoza, correo: vespinoza@ic-itcr.ac.cr
; Carrera: Matematica e ingenieria en computacion
; Estructura basica de un programa en ensamblador

.model small ; modelo del programa
.stack ; size de la pila, hexadecimal o por defecto
.data ; segmentos de datos, etiquetas.

.code ; inicio de instrucciones a utilizar
    main PROC ; podemos definir un main

    .exit ; Llama funcion del msDos que detiene la ejecución
    main ENDP ; fin de la etiqueta main

end ; ultima linea de ensamblado
