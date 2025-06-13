; Bu kod, y = 3x² - 5x + 10 matematiksel ifadesini hesaplar.
; x değeri 10500H adresinde saklanmaktadır.
; y değeri 12500H adresine yazılacaktır.
; Bellek adresleri 8 bit genişliğindedir.
; İşlem adımları:
; 1. x değerini bellekten al.
; 2. x² hesapla.
; 3. 3x² hesapla.
; 4. -5x hesapla.
; 5. Sonuçları belleğe kaydet.
; 6. Bellekteki değerden -5x çıkar.
; 7. Sonuca 10 ekle.
; 8. Sonucu 12500H adresine kaydet.
; 9. Programı durdur.

MOV DX,1000H    ; Bellek segmentini 1000H olarak ayarla
MOV DS,DX       ; DS register'ını DX ile ayarla (Bellek erişimi için)

MOV CX,03H      ; CX register'ına 3 yükle (Bu, x²'nin katsayısıdır)
MOV DL, [0500H]; 10500H adresindeki değeri DL register'ına al (Bu, x değeridir)
MOV AL, [0500H]; Aynı adres AL register'ına da al (x değerini işlemler için sakla)

MUL DL          ; AL register'ındaki değeri kendisiyle çarp (x² hesaplanıyor)
MUL CX          ; AL register'ındaki değeri CX ile çarp (3x² hesaplanıyor)
MOV BX,AX       ; Çarpım sonucu BX register'ına aktar (3x²'yi sakla)

MOV CL,05H      ; CL register'ına 5 yükle (Bu, -5x'in katsayısıdır)
MOV AL, [0500H]; 10500H adresindeki değeri tekrar AL register'ına al (x değerini tekrar al)
MUL CL          ; AL register'ındaki değeri CL ile çarp (-5x hesaplanıyor)

MOV [2500H],BX ; BX register'ındaki değeri 12500H adresine yaz (3x² sonucu belleğe yazıldı)
MOV [2500H],DX

SUB [2500H],AX ; 12500H adresindeki değerden AX çıkar (3x² - 5x işlemi yapılıyor)
ADD [2500H],0AH; 12500H adresindeki değere 10 ekle (Sonuç: 3x² - 5x + 10)

HLT             ; Programı durdur