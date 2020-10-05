; Creado por Yadir Vega Espinoza, correo: vespinoza@ic-itcr.ac.cr
; Carrera: Matematica e ingenieria en computacion
; Descripcion: este programa despliega un "Hola mundo" por consola 

.model small 
.stack
.data
    msg db "Hola mundo","$"

.code 
    main PROC
        MOV AX, SEG @data
        MOV DS, AX

        MOV AH, 09H
        LEA DX,msg
        INT 21H
    .exit
    main ENDP
END MAIN 