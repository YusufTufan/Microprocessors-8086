Tabii! İşte **8086 Prosedürler ve TUS-64 Prosedürü** ile ilgili GitHub README dosyan:


# 8086 Komut Kümelerinde Prosedürler

Bu dokümanda, **8086 mikroişlemci komut kümesi** içindeki prosedürler hakkında genel bilgi verilmekte ve **TUS-64** prosedürü açıklanmaktadır.

## 📌 Prosedür Nedir?

8086 komut kümesinde **prosedürler (procedures)**, **kod tekrarını önlemek, programı daha düzenli hale getirmek ve modüler yapı oluşturmak** için kullanılır.

### 🛠 **Prosedür Tanımlama**
Prosedürler aşağıdaki komutlarla tanımlanır:
- **`PROC`** → Prosedür başlangıcı
- **`ENDP`** → Prosedürün bitişi
- **`CALL`** → Prosedür çağırma
- **`RET`** → Prosedürden dönüş

Örneğin:
```assembly
CALL TUS-64  ; 64 tuş takımını tarayan prosedürü çağır
```
Burada **CALL** komutu, **TUS-64** prosedürünü çalıştırır. Prosedür tamamlandığında **RET** ile ana programa geri dönülür.

---

## 📜 **TUS-64 Prosedürü**
TUS-64 prosedürü, **64 tuş takımını tarayan ve basılan tuşun numarasını DL yazmacına yükleyen bir programdır**. Eğer hiçbir tuş basılmamışsa, **DL yazmacına 0 değeri atanır**.

## 📂 **Nasıl Kullanılır?**
Bu repository, **8086 assembly dilinde prosedürlerin nasıl çalıştığını** göstermek için oluşturulmuştur. **TUS-64 prosedürü**, tuş takımını tarayarak basılan tuşun numarasını alır ve **DL yazmacına yükler**.
---
