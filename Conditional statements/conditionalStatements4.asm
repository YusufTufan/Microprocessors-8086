; A dizisinde (30000H adresinden başlayan) 100 sayıdan çift olanları
; yeni bir diziye (80200H adresine) kopyalayan 8086 Assembly programı

MOV CL, 64H         ; CL = 100 (sayı adedi - döngü sayacı)
MOV DX, 3000H       ; DX = A dizisinin bulunduğu segment
MOV DS, DX          ; DS = 3000H → veri segmenti ayarlanıyor

MOV DI, 0000H       ; DI = A dizisi için offset (başlangıç: 30000H)
MOV SI, 0200H       ; SI = 80200H için offset (çift sayıları buraya yazacağız)

DEV:
MOV BL, [DI]        ; BL = A[DI] → mevcut sayı alınıyor
AND BL, 01H         ; BL’nin en düşük bitiyle AND işlemi → çift/tek kontrolü
CMP BL, 01H         ; Sonuç 1 ise tek sayıdır
JE TEK              ; Eğer tekse çift dizisine yazma, doğrudan TEK etiketine git

MOV AL, [DI]        ; AL = A[DI] (çift sayı)
MOV [SI], AL        ; Çift sayıyı hedef diziye yaz (80200H + SI)
INC SI              ; Çift dizinin bir sonrakine geç

TEK:
INC DI              ; Bir sonraki A dizisi elemanına geç
LOOP DEV            ; CL = CL - 1 → 0 değilse döngüye devam

HLT                 ; Programı durdur
