# 8086 XCHG Komutu

Bu dokümanda, **8086 mikroişlemci komut kümesi** içinde veri değişimi için kullanılan **XCHG** komutu açıklanmaktadır.

## 📌 XCHG Komutu

| **İsim** | **Anlam** | **Biçim** | **İşlem** |
|----------|----------|----------|----------|
| `XCHG`  | Veri değişimi | `XCHG operand1, operand2` | **operand1** ile **operand2**'nin değerlerini değiştirir. |

### **XCHG Komutunun Çalışma Mantığı**
- **XCHG**, iki operandın değerlerini birbirleriyle değiştirir.
- **Kaynak ve hedef operandlar**, **registerlar** veya **bellek adresleri** olabilir.
- **AX registeri** ile değişim yapıldığında, işlem daha hızlı gerçekleşir.

Örneğin:
```assembly
XCHG AL, BL  ; AL ve BL registerlarının değerlerini değiştir
XCHG AX, BX  ; AX ve BX registerlarının değerlerini değiştir
XCHG [SI], AX ; Bellekteki değer ile AX registerının değerini değiştir
```

---

## 📜 **XCHG Komutunun Kullanım Alanları**
| **Kullanım** | **Açıklama** |
|-------------|-------------|
| **Register-Register** | İki register arasında veri değişimi yapar. |
| **Register-Bellek** | Bir register ile bellek adresi arasında veri değişimi yapar. |
| **Bellek-AX** | Bellek ile **AX** registerı arasında veri değişimi yapıldığında işlem daha hızlıdır. |

### **XCHG Komutunun Sınırlamaları**
- **İki bellek adresi arasında doğrudan değişim yapılamaz.**  
  ```assembly
  XCHG [BX], [SI]  ; Geçersiz! Bellekten belleğe doğrudan değişim yapılamaz.
  ```
- **AX registeri ile değişim yapıldığında işlem daha hızlıdır.**  
  ```assembly
  XCHG AX, BX  ; Daha hızlı çalışır.
  ```

---

## 📂 **Nasıl Kullanılır?**
Bu repository, **8086 assembly dilinde XCHG komutunun nasıl çalıştığını** göstermek için oluşturulmuştur. **XCHG**, veri değişimi için kullanılan temel bir komut olup, registerlar ve bellek arasında veri değişimi sağlar.
---
