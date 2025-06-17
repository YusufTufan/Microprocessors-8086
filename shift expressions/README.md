# 8086 Kaydırma İfadeleri

Bu dokümanda, **8086 mikroişlemci komut kümesi** içinde **kaydırma (shift) işlemleri** açıklanmaktadır.

## 📌 Kaydırma Komutları

| **İsim** | **Anlam** | **Biçim** | **İşlem** |
|----------|----------|----------|----------|
| `SHL`  | Mantıksal Sola Kaydırma | `SHL operand, sayı` | Operandın bitlerini belirtilen sayı kadar sola kaydırır. Sağdaki boş bitler **0** ile doldurulur. |
| `SAL`  | Aritmetik Sola Kaydırma | `SAL operand, sayı` | **SHL ile aynı işlemi yapar**, ancak aritmetik işlemler için kullanılır. |
| `SHR`  | Mantıksal Sağa Kaydırma | `SHR operand, sayı` | Operandın bitlerini belirtilen sayı kadar sağa kaydırır. Soldaki boş bitler **0** ile doldurulur. |
| `SAR`  | Aritmetik Sağa Kaydırma | `SAR operand, sayı` | Operandın bitlerini belirtilen sayı kadar sağa kaydırır. Soldaki boş bitler **işaret biti (1 veya 0)** ile doldurulur. |

---

## 📜 **Kaydırma Komutlarının Çalışma Mantığı**
Kaydırma işlemleri, **bit manipülasyonu**, **hızlı çarpma ve bölme işlemleri**, **maskeleme** gibi amaçlarla kullanılır.

### **SHL / SAL (Sola Kaydırma)**
- **Operandın tüm bitleri sola kaydırılır**.
- **Sağdaki boş bitler 0 ile doldurulur**.
- **Sonuç, operandın 2'nin kuvveti ile çarpılmasına eşdeğerdir**.

Örnek:
```assembly
MOV AL, 00011000B  ; AL = 24 (Decimal)
SHL AL, 1          ; AL = 00110000B (48 Decimal)
```

### **SHR (Sağa Kaydırma)**
- **Operandın tüm bitleri sağa kaydırılır**.
- **Soldaki boş bitler 0 ile doldurulur**.
- **Sonuç, operandın 2'nin kuvveti ile bölünmesine eşdeğerdir**.

Örnek:
```assembly
MOV AL, 00011000B  ; AL = 24 (Decimal)
SHR AL, 1          ; AL = 00001100B (12 Decimal)
```

### **SAR (Aritmetik Sağa Kaydırma)**
- **Operandın tüm bitleri sağa kaydırılır**.
- **Soldaki boş bitler işaret biti ile doldurulur**.
- **Negatif sayılar için doğru bölme işlemi sağlar**.

Örnek:
```assembly
MOV AL, 10011000B  ; AL = -104 (İşaretli sayı)
SAR AL, 1          ; AL = 11001100B (-52 Decimal)
```

---

## 📂 **Nasıl Kullanılır?**
Bu repository, **8086 assembly dilinde kaydırma komutlarının nasıl çalıştığını** göstermek için oluşturulmuştur. **SHL, SAL, SHR ve SAR** komutları, bit manipülasyonu ve hızlı matematiksel işlemler için kullanılır.

---
