; ---------------------------------------------------------------------------
; Bu Assembly kodu, SUM = 3X + 2Z + T işlemini gerçekleştirir.
; X, Z ve T değerlerini bellekte belirli adreslerden alarak,
; önce matematiksel işlemleri yapar ve sonucu SUM değişkenine kaydeder.
; İlk olarak X değeri üç kez toplanarak 3X elde edilir.
; Ardından Z değeri iki kez toplanarak 2Z elde edilir.
; Son olarak T değeri eklenerek nihai SUM değeri hesaplanır.
; ---------------------------------------------------------------------------

MOV DS, 1000H  ; Veri segmentini 1000H adresine taşıyoruz
MOV DX, DS     ; DX register'ına DS değerini atıyoruz

MOV BL, [0000H] ; BL register'ına X değerini alıyoruz
MOV CL, [0000H] ; CL register'ına X değerini alıyoruz
MOV DL, [0000H] ; DL register'ına X değerini alıyoruz

MOV [0001H], CL  ; Bellekte 0001H adresine X değerini kaydediyoruz
ADD [0001H], BL  ; 0001H adresindeki değere X ekliyoruz (X + X = 2X)
ADD [0001H], DL  ; 0001H adresindeki değere X ekliyoruz (2X + X = 3X)

MOV CL, [0050H]  ; CL register'ına Z değerini alıyoruz
ADD [0050H], CL  ; 0050H adresindeki değere Z ekliyoruz (Z + Z = 2Z)

MOV BL, [0150H]  ; BL register'ına T değerini alıyoruz
ADD [0150H], BL  ; T değerini kendi içinde topluyoruz (T = T)

MOV DX, [0001H]  ; DX register'ına 3X değerini alıyoruz
ADD DX, [0050H]  ; DX'e 2Z değerini ekliyoruz (3X + 2Z)
ADD DX, [0150H]  ; DX'e T değerini ekliyoruz (3X + 2Z + T)

MOV [SUM], DX    ; Sonucu SUM değişkenine kaydediyoruz
HLT              ; Programı durduruyoruz