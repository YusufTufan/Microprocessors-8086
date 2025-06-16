# 8086 Aritmetik Operatörleri

Bu dokümanda, **8086 mikroişlemci komut kümesi** içindeki temel aritmetik operatörler açıklanmaktadır.

## 📌 Aritmetik Komutlar

| **İsim** | **Anlam** | **Biçim** | **İşlem** |
|----------|----------|----------|----------|
| `ADD`  | Toplama | `ADD operand1, operand2` | İki operandı toplar ve sonucu **operand1**'e yazar. |
| `ADC`  | Toplama (Taşımayla) | `ADC operand1, operand2` | İki operandı ve **Carry Flag**'i (CF) toplar, sonucu **operand1**'e yazar. |
| `SUB`  | Çıkarma | `SUB operand1, operand2` | **operand1**'den **operand2**'yi çıkarır ve sonucu **operand1**'e yazar. |
| `SBB`  | Çıkarma (Taşımayla) | `SBB operand1, operand2` | **operand1**'den **operand2**'yi ve **Borrow Flag**'i (CF) çıkarır, sonucu **operand1**'e yazar. |
| `INC`  | Bir artırma | `INC operand` | **operand**'ı **1** artırır. |
| `DEC`  | Bir azaltma | `DEC operand` | **operand**'ı **1** azaltır. |

## 📂 Nasıl Kullanılır?

Bu repository, **8086 assembly** programlarında aritmetik işlemler hakkında bilgi sağlamak için oluşturulmuştur.

---
