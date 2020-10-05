; Creado por Yadir Vega Espinoza, correo: vespinoza@ic-itcr.ac.cr
; Carrera: Matematica e ingenieria en computacion
; Descripcion: entradas por teclado

.model small
.stack
.data
    msg db 10,13,7,'Ingrese cadena: ','$' ; solicitando al usuario 
    cadena db 100 dup(' '), '$'; reservando 100 espacios en memoria que contienen ' ' (espacio)
     

.code
    main PROC
        mov ax, seg @data ; mover el segmento de datos al registro de proposito general
        
        ; A cerca del registro DS:
        ; La dirección inicial de un segmento de datos de programa es almacenada en el registro DS. 
        ; En términos sencillos, esta dirección, mas un valor de desplazamiento en una instrucción, 
        ; genera una referencia a la localidad de un bytes especifico en el segmento de datos.
                
        mov ds, ax ; mover a ds lo que tengo en el registro ax
        mov ah, 09h ; permite la salida de cadena en la salida estandar
        lea dx, msg

        ; utilizaremos una funcion 3fh que es de la interrupción 21h, nos permitira mover la cadena ingresada en la entrada estandar hasta que se encuentre un salto de linea
        int 21h 
        mov ah,3fh ; utilizamos la funcion antes mencionada
        mov bx, 00 
        mov cx, 100 ;size maximo de nuestra cadena
        mov dx, offset[cadena] ; desplazamiento de nuestro segmento de datos apuntando a cadena
        int 21h ; ejecutando la interrupcion anterior mediante la 21h

        ; imprimir por pantalla lo ingresado
        mov ah, 09h ; traemos a ah lo que tiene la 09h
        mov dx, offset[cadena] ;traemos a dx lo que tiene cadena por medio  del desplazamiento mediante offset
        int 21h ; ejecutamos por medio de la interrupcion 21h

    .exit

    main ENDP

end