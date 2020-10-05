; Creado por Yadir Vega Espinoza, correo: vespinoza@ic-itcr.ac.cr
; Carrera: Matematica e ingenieria en computacion
; Descripcion: entradas por teclado

.model small
.stack
.data
    msg1 db 10,13,7, 'Ingrese un digito: ','$' ; solicitar digito
    msg2 db 10,13,7, 'El numero ingresado es: ','$' ;para mostrar digito
    num db ? ; el valor sera obtenido en tiempo de ejecucion

.code
    main PROC
        mov ax, seg @data ; mover a ax el segmento de datos
        mov ds, ax ; mover al segmento de datos lo que tiene dx 

        ; para deplegar mensaje que está dentro de la etiqueta msg1 
        mov ah,09h ; la 09h muestra cadena de caracteres de forma tabulada por consola
        lea dx,msg1 ; leer en dx lo que tenga msg1
        int 21h ;ejecutar la interrupcion (mostrar ingrese un numero)

        ; tomar lectura mediante la 01h y guardarla en ah
        mov ah,01h 
        int 21h ; ejecutamos 
        sub al,30h ;en al esta el digito, hacemos ajuste: restamos 48 en decimal o 30h en hexadecimal para obtener el valor numerico en decimal
        mov num, al ; lo que tiene al (el digito) lo movemos a num

        ; mostrar la etiqueta msg2
        mov ah,09h ; para desplegar por pantalla (o9h) mandar a la parte alta de dx (ah)
        lea dx, msg2 ;movemos lo que tiene msg2 al dx
        int 21h ;ejecutamos

        ; Mostrando el numero
        mov ah,02h ; para desplegar por pantalla un caracter (02h)
        mov dl,num ; movemos el digito al dl
        add dl,30h ;sumar 30h al dl para poder mostrar el valor
        int 21h; ejecutamos

    .exit
    main ENDP

END main