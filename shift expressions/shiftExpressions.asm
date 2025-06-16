; Bit Kaydırma (Shift) İşlemleri Örneği – 8086 Assembly
; Bu program SHR (mantıksal sağa kaydırma), SHL (mantıksal sola kaydırma)
; ve SAR (aritmetik sağa kaydırma) işlemlerini gösterir.
; DL ve BL registerları üzerinde çeşitli kaydırma işlemleri uygulanır.

MOV CL, 04H       ; CL = 4 → kaç bit kaydırma yapılacağı CL'ye yazılır

MOV DL, 83H       ; DL = 10000011B → Başlangıç değeri
SHR DL, CL        ; DL'yi 4 bit mantıksal sağa kaydır (boşluklara 0 gelir)
                  ; 10000011B → 00001000B → DL = 08H

MOV BL, 9EH       ; BL = 10011110B → Başlangıç değeri
SHL BL, 1         ; BL'yi 1 bit sola kaydır (boşluklara 0 gelir)
                  ; 10011110B → 00111100B → BL = 3CH

SAR BL, 1         ; BL'yi 1 bit aritmetik sağa kaydır (işaret biti korunur)
                  ; 00111100B → 00011110B → BL = 1EH

HLT               ; Program durur
