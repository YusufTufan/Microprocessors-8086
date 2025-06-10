; Bu Assembly programı, bellekteki üç farklı konumda saklanan değerleri birbirleriyle takas ederek yer değiştirir.

MOV DX, 1200H          ; DX'e 1200H yükleniyor, segment belirlemek için kullanılacak.
MOV DS, DX             ; DS segment register'ı DX değerine atanıyor, bellek segmenti 1200H olarak ayarlandı.
MOV CL, [0000H]        ; 12000H adresindeki Z'nin değeri CL'ye yükleniyor.
MOV SI, 0450H          ; SI register'ı 12450H adresine ayarlanıyor (X'in adresi).
XCHG [SI], CL          ; X'in değeri ile CL'nin içindeki Z'nin değeri takas ediliyor (12450H ↔ Z).
MOV DI, 0FFFH          ; DI register'ı 12FFFH adresine ayarlanıyor (Y'nin adresi).
XCHG [DI], CL          ; Y'nin değeri ile CL içindeki önceki X'in değeri takas ediliyor (12FFFH ↔ önceki X).
MOV [0000H], CL        ; CL'de kalan Y'nin değeri Z'nin bulunduğu 12000H adresine yazılıyor.
HLT                    ; Programın çalışması durduruluyor.
