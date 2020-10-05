; Creado por Yadir Vega Espinoza, correo: vespinoza@ic-itcr.ac.cr
; Carrera: Matematica e ingenieria en computacion
; Descripcion: etiquetas en ensamblador

; Nota: Una etiqueta es un identificador que actua como marcador de posicion
;       para las instrucciones y los datos.
;       Una etiqueta que se coloca justo antes de una variable, representa la direccion en memoria de esa variable.

var byte 'A' ; declaracion de variable
var db ? ; tomara valor en tiempo de ejecucion

mensaje db "Hola","$" ;mensaje es la etiqueta de la variable de tipo byte que contiene Hola


; Operador DUP

byte 20 DUP(0) ; reserva 20 espacios llenos de ceros
byte 20 DUP(?) ; reserva 20 espacios con valores dados en tiempo de ejecucion