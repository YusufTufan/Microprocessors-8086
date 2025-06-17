# 8086 Döndürme İfadeleri

Bu dokümanda, **8086 mikroişlemci komut kümesi** içinde **döndürme (rotate) işlemleri** açıklanmaktadır.

## 📌 Döndürme Komutları

| **İsim** | **Anlam** | **Biçim** | **İşlem** |
|----------|----------|----------|----------|
| `RCL`  | Döndürme (Carry ile Sol) | `RCL operand, sayı` | Operandın bitlerini belirtilen sayı kadar sola döndürür. **Carry Flag (CF)** en sağdaki bite eklenir. |
| `RCR`  | Döndürme (Carry ile Sağ) | `RCR operand, sayı` | Operandın bitlerini belirtilen sayı kadar sağa döndürür. **Carry Flag (CF)** en soldaki bite eklenir. |
| `ROL`  | Döndürme (Sol) | `ROL operand, sayı` | Operandın bitlerini belirtilen sayı kadar sola döndürür. En soldaki bit en sağa taşınır. |
| `ROR`  | Döndürme (Sağ) | `ROR operand, sayı` | Operandın bitlerini belirtilen sayı kadar sağa döndürür. En sağdaki bit en sola taşınır. |

---

## 📜 **Döndürme Komutlarının Çalışma Mantığı**
Döndürme işlemleri, **bit manipülasyonu**, **hızlı veri işleme**, **kriptografi** ve **kontrol mekanizmaları** için kullanılır.

### **RCL / RCR (Carry ile Döndürme)**
- **Carry Flag (CF)**, döndürme işlemi sırasında kullanılır.
- **RCL**, CF'yi en sağdaki bite ekleyerek sola döndürür.
- **RCR**, CF'yi en soldaki bite ekleyerek sağa döndürür.

Örnek:
```assembly
MOV AL, 01110101B  ; AL = 117 (Decimal)
RCL AL, 1          ; AL = 11101010B (Carry Flag dahil)
```

### **ROL / ROR (Normal Döndürme)**
- **ROL**, en soldaki biti en sağa taşıyarak sola döndürür.
- **ROR**, en sağdaki biti en sola taşıyarak sağa döndürür.

Örnek:
```assembly
MOV AL, 01110101B  ; AL = 117 (Decimal)
ROL AL, 1          ; AL = 11101010B
```

---

## 📂 **Nasıl Kullanılır?**
Bu repository, **8086 assembly dilinde döndürme komutlarının nasıl çalıştığını** göstermek için oluşturulmuştur. **RCL, RCR, ROL ve ROR** komutları, bit manipülasyonu ve veri işleme için kullanılır.

---
