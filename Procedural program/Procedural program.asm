;8086 64 adet tuş takımını algılayan ve basılan tuşun tuş numarasını DL yazmacına  yükleyen ve
;komut kümelerinden oluşan prosedür programını yazınız.
;Hiçbir tuş basılmadığında DL yazmacına 0 değeri yazılacaktır.
; Prosedür: TUS-64

NEAR PROC TUS-64                ; Tuş okuma prosedürü başlangıcı
MOV CH, FFH                     ; Tuş sayacı başlangıç değeri
MOV CL, 08H                     ; Sütun sayacı (8 sütun kontrol edilecek)
MOV BL, 08H                     ; Satır sayacı (8 satır kontrol edilecek)
MOV BH, FEH                     ; İlk satırı aktif etme kodu (1111 1110), 14 servo sıfırlanıyor

DEVAM: MOV AL, BH               ; Satır aktif etme kodunu AL'a yükle
OUT EAH, AL                     ; AL registerindeki değeri porta yaz (satır aktivasyonu)
IN AL, EBH                      ; Porttan veriyi oku (servo kontrolü)

TEKRAR: SHL AL, 1               ; AL registerini 1 bit sola kaydır (sütun kontrolü)
        INC CH                  ; Tuş sayacını artır
        JNC BLND                ; Tuş basılı değilse kontrol et
        DEC CL                  ; Sütun sayacını azalt
        CMP CL, 00H             ; Sütun kontrolü bitmiş mi?
        JNE TEKRAR              ; Bitmemişse tekrar et

DEC BL                          ; Satır sayacını azalt
JZ SON                          ; Eğer tüm satırlar tamamlandıysa sona git
ROL BH, 1                       ; Satır aktivasyon kodunu döndür (yeni satır aktifleştir)
JMP DEVAM                       ; Bir sonraki satır için döngüyü başlat

BLND: MOV DL, CH                ; Tuş sayacını DL’ye yükle
      JMP BITIR                       ; Prosedürü bitir

SON: MOV DL, 00H                ; Yeni tuş basılmadı, DL’ye 0 yaz

BITIR: ENDP TUS-64              ; Tuş okuma prosedürü sonu