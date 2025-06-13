; Y = X^3 - 7*X ifadesini 8086 Assembly komutlarıyla hesaplayan program
; X, F0020H adresinden alınır
; Y, F0000H adresine yazılır

MOV DX, F000H         ; Segment adresini DX'e yükle (F000H)
MOV DS, DX            ; DS = F000H → veri segmenti ayarlanıyor

MOV SI, 0000H         ; Offset 0 (F0000H adresini göstermek için)
MOV CL, [SI + 0020H]  ; CL = X → F0020H adresindeki X değeri alınıyor

MOV AL, CL            ; AL = X
MUL CL                ; X * X → AX = X^2

MOV CH, 00H           ; CH = 0, böylece CX register'ı güvenli biçimde ayarlanabilir
MUL CX
MOV CX, AX            ; CX = X^2 (sonucu CX'te tut)

MOV AL, 07H           ; AL = 7
MUL CL                ; 7 * X → AX = 7X

SUB CX, AX            ; CX = X^2 - 7X (nihai sonuç burada)

MOV [SI], CX          ; Sonuç olan Y değerini F0000H adresine yaz

HLT                   ; Programı durdur
