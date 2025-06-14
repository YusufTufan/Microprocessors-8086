; A(I) dizisinde 100 adet sayı vardır.
; A(I) dizisinde toplam 0 değerine eşit kaç sayı olduğunu bulan ve
; bu sayıyı [SUM] isimli adres lokasyonuna kaydeden 8086 komut kümesi.

MOV BX, 3000H      ; A(I) dizisinin başlangıç adresini yükle
MOV DS, BX         ; Veri segmentini ayarla

MOV BL, 64H        ; 100 adet sayıyı kontrol etmek için sayaç (100 = 64H)
MOV DL, 00H        ; Sıfır sayısını sayacak sayaç
MOV DI, 0000H      ; Dizi içinde ilerlemek için indeks

CONTINUE: CMP [DI], 00H  ; Bellekteki değeri kontrol et
          JE SAY         ; Eğer 0 ise, sayacı artır
          INC DI         ; İndeksi ilerlet
          DEC BL         ; Sayaçtan bir azalt
          JNZ CONTINUE   ; Sayaç sıfır değilse döngüye devam et

MOV [SUM], DL      ; DL'deki sıfır sayısını SUM adresine kaydet
JMP END            ; Programı bitir

SAY: INC DL        ; Sıfır bulunduğunda sayaç artır
     INC DI        ; İndeksi ilerlet
     DEC BL        ; Sayaçtan bir azalt
     JNZ CONTINUE  ; Sayaç sıfır değilse döngüye devam et

END: HLT           ; Programı sonlandır