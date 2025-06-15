; Bu Assembly kodu, A(I) dizisinde bulunan 100 sayıyı inceler ve
; tek olanları B(I) dizisine, çift olanları ise C(I) dizisine yükler.
; Eğer dizide 0 değeri bulunursa işlemi sonlandırır.
; Ayrıca, kaç tane tek ve çift sayı olduğunu sırasıyla
; 0F100H ve 0F101H adreslerine yazmaktadır.

; Veri segmentini sıfırlıyoruz.
MOV DX, 0000H
MOV DS, DX

; A(I) dizisinin başlangıç adresi F000H
MOV BX, F000H

; B(I) dizisinin başlangıç adresi A000H
MOV SI, A000H

; C(I) dizisinin başlangıç adresi B000H
MOV DI, B000H

CONTINUE:
    ; BX adresindeki değer 0 mı? Eğer öyleyse sonlandır.
    CMP [BX], 00H
    JE END

    ; BX adresindeki değeri al ve tek mi kontrol et.
    MOV DL, [BX]
    AND DL, 01H
    CMP DL, 01H
    JE TEK

    ; Çift sayı ise C(I) dizisine ekle.
    MOV DH, [BX]
    MOV [DI], DH
    INC DI
    JMP GIT

TEK:
    ; Tek sayı ise B(I) dizisine ekle.
    MOV AL, [BX]
    MOV [SI], AL
    INC SI

GIT:
    ; BX'i artırarak sonraki elemana geç.
    INC BX
    CMP BX, F064H
    JNE CONTINUE

    ; Tek sayıların toplamını 0F100H adresine yaz.
    SUB SI, A000H
    MOV BX, F100H
    MOV [BX], SI

    ; Çift sayıların toplamını 0F101H adresine yaz.
    SUB DI, B000H
    INC BX
    MOV [BX], DI

END:
    ; Programı sonlandır.
    HLT