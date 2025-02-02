.orig x3000

;inicializar datos
AND R5, R5, #0
ADD R5, R5, #6;input
AND R1, R1, #0
ADD R1, R1, #0;inverso
AND R2, R2, #0
ADD R2, R2, #0;resultado
AND R4, R4, #0
ADD R4, R4, #0;comprobante loop
AND R6, R6, #0
ADD R6, R6, #0;sumante a base de resultado
AND R7, R7, #0
ADD R7, R7, #0;comprobante de 1
NEGATIVO
AND R3, R3, #0
ADD R3, R3, #1;reset contador
NOT R1, R5 ; R1 = ~R6
ADD R1, R1, #1 ; R1 = -R6 negativo
ADD R4, R2, #0
BRp LOOPsecundario
LOOP
ADD R2, R2, R5; r2 = resultado final
ADD R3, R3, #1; r3 = contador
ADD R4, R3, R1; comprobar contador
BRn LOOP
AND R6, R6, #0 
ADD R6, R6, R2
AND R1, R1, #0
ADD R1, R1, #0; reset negativo
ADD R5, R5, #-2;reducir input
BRp NEGATIVO
LOOPsecundario
ADD R2, R2, R6; r2 = resultado final
ADD R3, R3, #1; r3 = contador
ADD R4, R3, R1; comprobar contador
BRn LOOPsecundario
AND R6, R6, #0 
ADD R6, R6, R2
AND R1, R1, #0
ADD R1, R1, #0; reset negativo
ADD R5, R5, #-1;reducir input
ADD R7, R5, #-1;checar si es 1
BRp NEGATIVO
.END
