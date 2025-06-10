;Bu Assembly programı, bellekteki üç farklı konumda saklanan değerleri birbirleriyle takas ederek yer değiştirir.

MOV DX, 1200H     ; DX registerına 1200H yükleniyor (Bellek segmenti)
MOV DS, DX        ; DS registerına DX atanıyor (Bellek segmenti belirleniyor)
MOV CL, [0000H]   ; 12000H adresindeki Z'in değerini CL’ye al
MOV SI, 0450H     ; SI registerını 12450H adresine ayarla (X’in adresi)
MOV DL, [SI]      ; 12450H adresindeki X’in değerini DL'ye al
MOV [SI], CL      ; X’in bulunduğu 12450H adresine Z’in değerini yaz
MOV DI, 0FFFH     ; DI registerını 12FFFH adresine ayarla (Y’in adresi)
MOV CL, [DI]      ; 12FFFH adresindeki Y’in değerini CL’ye al
MOV [0000H], CL   ; Z’in bulunduğu 12000H adresine Y’in değerini yaz
MOV [DI], DL      ; Y’in bulunduğu 12FFFH adresine X’in değerini yaz
HLT               ; Programı sonlandır
