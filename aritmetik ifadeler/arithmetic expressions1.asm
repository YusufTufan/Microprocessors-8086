; Y = X^2 + 5*X ifadesini 8086 Assembly ile hesaplayan program
; X, bellek adresi F0020H'de
; Y, bellek adresi F0000H'e yazılacak

MOV DX, F000H       ; Segment adresi olarak F000H yükleniyor
MOV DS, DX          ; DS = F000H (Bellek segmenti ayarlanıyor)

MOV SI, 0000H       ; SI başlangıç offset'i (eklenerek adres belirlemede kullanılır)

MOV BL, [SI + 0020H] ; BL = X (F0020H adresinden X alınır)
MOV AL, BL          ; AL = X (çarpım işlemi için AL'ye yükleniyor)
MUL BL              ; AL * BL = X^2, sonuç AX'e yazılır

MOV DX, AX          ; DX = X^2 (ilk terimi DX'e sakla)

MOV AL, 05H         ; AL = 5
MUL BL              ; 5 * X → sonuç AX'e (BL hâlâ X içeriyor)

ADD DX, AX          ; DX = X^2 + 5*X (sonuç burada)

MOV [SI], DX        ; F0000H adresine (SI=0) sonucu yaz (Y = X^2 + 5*X)

HLT                 ; Programı durdur
