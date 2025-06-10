; [SONUC] = (AL * [NUM_1]) + ([¬NUM_2] * AL) + BL
; Mantıksal işlemleri gerçekleştiren Assembly kodu

AND [NUM_1], AL   ; AL ve NUM_1'in mantıksal AND işlemi
NOT [NUM_2]       ; NUM_2'nin tüm bitlerini ters çevir
AND AL, [NUM_2]   ; AL ile ters çevrilmiş NUM_2'nin AND işlemi
OR AL, [NUM_1]    ; AL ile NUM_1'in OR işlemi
OR AL, BL         ; AL ile BL'nin OR işlemi
MOV [SONUC], AL   ; Sonucu AL'den SONUC değişkenine ata
HLT               ; Programı durdur