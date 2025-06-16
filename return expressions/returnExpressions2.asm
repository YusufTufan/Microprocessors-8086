; RCR (Rotate through Carry Right) örneği - CF üzerinden 2 bit sağa döndürme
; Başlangıçta CF = 1 olarak varsayılmıştır

MOV DL, 75H        ; DL = 01110101B
MOV CL, 02H        ; 2 defa döndür
STC                ; CF = 1 olarak ayarlanır (Set Carry Flag)
RCR DL, CL         ; DL, CF üzerinden 2 defa sağa döner
                   ; 1. adım → DL = 10111010B
                   ; 2. adım → DL = 11011101B

; Sonuç:
; DL = DDH (11011101B)
; CF = 1

HLT
