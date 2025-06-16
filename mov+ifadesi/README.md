# 8086 MOV Komutu

Bu dokümanda, **8086 mikroişlemci komut kümesi** içinde en temel veri aktarım komutu olan **MOV** komutu açıklanmaktadır.

## 📌 MOV Komutu

| **İsim** | **Anlam** | **Biçim** | **İşlem** |
|----------|----------|----------|----------|
| `MOV`  | Veri taşıma | `MOV hedef, kaynak` | Kaynak operanddaki veriyi hedef operanda taşır. |

### **MOV Komutunun Çalışma Mantığı**
- **MOV**, veriyi **bir register**, **bellek adresi** veya **sabit bir değer** arasından taşımak için kullanılır.
- **Kaynak operand**, taşınacak veriyi içerir.
- **Hedef operand**, verinin taşınacağı konumu belirler.

Örneğin:
```assembly
MOV AL, BL  ; BL'deki veriyi AL registerına taşı
MOV AX, 100H ; 100H değerini AX registerına ata
MOV [SI], CL ; CL registerındaki veriyi SI ile gösterilen bellek adresine yaz
```

---

## 📜 **MOV Komutunun Kullanım Alanları**
| **Kullanım** | **Açıklama** |
|-------------|-------------|
| **Register-Register** | İki register arasında veri aktarımı yapar. |
| **Register-Anlık Değer** | Bir registera sabit bir değer atar. |
| **Bellek-Register** | Bellekten bir registera veya registerdan belleğe veri taşır. |

### **MOV Komutunun Sınırlamaları**
- **İki bellek adresi arasında doğrudan veri taşıyamaz.**  
  ```assembly
  MOV [BX], [SI]  ; Geçersiz! Bellekten belleğe doğrudan taşıma yapılamaz.
  ```
- **Doğrudan bir sabit değeri bellek adresine yazamaz.**  
  ```assembly
  MOV [100H], 25  ; Geçersiz! Belleğe sabit değer taşımak için önce bir register kullanılmalı.
  ```
---
## 📂 **Nasıl Kullanılır?**
Bu repository, **8086 assembly dilinde MOV komutunun nasıl çalıştığını** göstermek için oluşturulmuştur. **MOV**, veri taşımak için temel bir komut olup, neredeyse her assembly programında kullanılır.
---
