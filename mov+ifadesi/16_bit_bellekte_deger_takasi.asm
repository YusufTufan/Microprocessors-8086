; 16-bit bellek bölgesinde değer takası yapan Assembly kodu
; 12000H adresinde X, 12500H adresinde Y, 12750H adresinde Z değerleri bulunuyor.

MOV DS, 1200H      ; DS register'ını 12000H adresine ayarla
MOV DX, DS         ; DX register'ına DS değerini kopyala

MOV AX, [0000H]    ; X = Bellekten 12000H adresindeki değeri AX'e al
MOV BX, [0500H]    ; Y = Bellekten 12500H adresindeki değeri BX'e al
MOV [0500H], AX    ; Y = X (Bellek adresi: 12500H), X değeri Y'ye aktarılıyor

MOV AX, [0750H]    ; Z = Bellekten 12750H adresindeki değeri AX'e al
MOV [0750H], BX    ; Z = Y (Bellek adresi: 12750H), Y değeri Z'ye aktarılıyor
MOV [0000H], AX    ; X = Z (Bellek adresi: 12000H), Z değeri X'e aktarılıyor

HLT                ; Programı durdur  
