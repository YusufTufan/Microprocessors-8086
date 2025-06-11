; Bu program, aşağıdaki mantık işlemini gerçekleştirmek için yazılmıştır:
; [NUM_1] = (DL AND NOT AL) OR (NOT AL AND CL) OR (DL AND NOT [NUM_2])
; Üç ayrı mantık terimi AND işlemleriyle hesaplanır, ardından OR ile birleştirilip NUM_1'e yazılır.

MOV BL, AL            ; AL'nin değerini BL'ye kopyala (koruma için)
AND BL, DL            ; BL = DL AND AL (1. terim)

NOT AL                ; AL'yi tersle (AL = NOT AL)
AND CL, AL            ; CL = NOT AL AND CL (2. terim)

NOT DL                ; DL'yi tersle (DL = NOT DL)
NOT [NUM_2]           ; [NUM_2] içeriğini tersle (NOT [NUM_2])
AND DL, [NUM_2]       ; DL = NOT DL AND NOT [NUM_2] (3. terim)

OR BL, CL             ; BL = (DL.AND.AL) OR (NOT AL.AND.CL)
OR BL, DL             ; BL = önceki sonuca (DL.AND.NOT [NUM_2]) eklenir

MOV [NUM_1], BL       ; Son sonuç NUM_1 adresine yazılır

HLT                   ; Program sonlandırılır
