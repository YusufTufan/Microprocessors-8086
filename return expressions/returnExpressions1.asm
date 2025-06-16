; ROL (Rotate Left) örneği - DL sola 2 kez döndürülür

MOV DL, 75H        ; DL = 01110101B
MOV CL, 02H        ; CL = 2 (2 kez döndür)
ROL DL, CL         ; DL'yi 2 bit sola döndür
                   ; 1. döndürme: 11101010B
                   ; 2. döndürme: 11010101B

; Sonuç:
; DL = D5H (11010101B)
; CF = 1 (en son çıkan bit)

HLT
