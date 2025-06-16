# 8086 Şartlı Dallanma Komutları

Bu dokümanda, **8086 mikroişlemci komut kümesi** içindeki **şartlı dallanma** komutları açıklanmaktadır. **CMP (Karşılaştırma)** komutu ve ilgili dallanma ifadeleri ele alınmaktadır.

## 📌 CMP Komutu

| **İsim** | **Anlam** | **Biçim** | **İşlem** |
|----------|----------|----------|----------|
| `CMP`  | Karşılaştırma | `CMP operand1, operand2` | **operand1** ile **operand2**'yi karşılaştırır ve sonucu **flag (bayrak) register'larına** yazar. Sonuç saklanmaz, sadece bayraklar etkilenir. |

### **CMP Komutunun Çalışma Mantığı**
- **CMP**, iki operandı birbirinden çıkarır ancak sonucu saklamaz.
- **Sonuç**, **Zero Flag (ZF)**, **Sign Flag (SF)** ve **Carry Flag (CF)** gibi bayrakları etkiler.
- **Şartlı dallanma komutları**, CMP sonrası bayraklara göre çalışır.

Örneğin:
```assembly
CMP AL, BL  ; AL ile BL'yi karşılaştır
JZ EQUAL    ; Eğer AL == BL ise EQUAL etiketine git
```
Burada **CMP** komutu, **AL ve BL'nin eşit olup olmadığını** kontrol eder. Eğer eşitlerse **Zero Flag (ZF) = 1** olur ve **JZ** komutu **EQUAL** etiketine dallanır.
---

## 📜 **Şartlı Dallanma Komutları**
CMP komutundan sonra kullanılan **şartlı dallanma** komutları, bayraklara göre program akışını değiştirir.

| **İsim** | **Anlam** | **Biçim** | **İşlem** |
|----------|----------|----------|----------|
| `JA`   | Üst ise Dallan | `JA etiket` | **CF=0, ZF=0** olduğunda belirtilen etikete dallanır. |
| `JC`   | Elde var ise | `JC etiket` | **CF=1** olduğunda belirtilen etikete dallanır. |
| `JE`   | Eşit ise | `JE etiket` | **ZF=1** olduğunda belirtilen etikete dallanır. |
| `JNE`  | Eşit değil ise | `JNE etiket` | **ZF=0** olduğunda belirtilen etikete dallanır. |
| `JZ`   | Sıfır ise | `JZ etiket` | **ZF=1** olduğunda belirtilen etikete dallanır. |
| `JNZ`  | Sıfır değil ise | `JNZ etiket` | **ZF=0** olduğunda belirtilen etikete dallanır. |
| `JNC`  | Elde yok ise | `JNC etiket` | **CF=0** olduğunda belirtilen etikete dallanır. |
| `JS`   | İşaret var ise | `JS etiket` | **SF=1** olduğunda belirtilen etikete dallanır. |
| `JNS`  | İşaret yok ise | `JNS etiket` | **SF=0** olduğunda belirtilen etikete dallanır. |

---

## 📂 **Nasıl Kullanılır?**
Bu repository, **8086 assembly dilinde şartlı dallanma komutlarının nasıl çalıştığını** göstermek için oluşturulmuştur. **CMP komutu**, iki değeri karşılaştırarak bayrakları etkiler ve **şartlı dallanma komutları** ile program akışı yönlendirilir.

---
