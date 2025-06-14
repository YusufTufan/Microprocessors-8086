; 13000H adresinden başlayan bellekteki 65536 adet 8-bit veriyi
; sonsuz döngü içinde NOT işlemine tabi tutup tekrar aynı yere yazar

MOV DX, 1300H     ; Segment adresini DX'e ata
MOV DS, DX        ; DS = 1300H → Bellek segmenti 13000H
MOV SI, 0000H     ; SI = 0 → Offset başlangıcı

DEVAM:
NOT [SI]          ; SI'nin gösterdiği adresteki veriyi tersle (bitwise NOT)
INC SI            ; Sonraki byte’a geç (1 artır)
JMP DEVAM         ; Sonsuz döngü: başa dön, işlemi tekrar et
