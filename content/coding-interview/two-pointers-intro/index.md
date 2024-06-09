---
title: "Two Pointers"
date: 2024-06-08
draft: false
description: "Tentang Two Pinters"
tags: ["struktur data", "algoritma"]
series: ["Coding Interview"]
series_order: 1
showReadingTime: true
---
{{< katex >}}
## Ikhtisar
Sesuai namanya, teknik **Two Pointers** menggunakan dua pointer untuk menelusuri array atau daftar sampai kondisi tertentu terpenuhi. Ini berguna karena memungkinkan kita untuk melacak dua indeks yang berbeda dalam satu iterasi. Jadi, kalau kamu perlu menemukan dua elemen dalam array yang memenuhi kondisi tertentu, teknik dua pointer ini harus jadi strategi pertama yang kamu pikirkan.

Pointer bisa digunakan untuk menelusuri struktur data ke satu atau kedua arah, tergantung masalahnya. Misalnya, untuk mengecek apakah sebuah string adalah palindrom, kita bisa pakai satu pointer untuk mulai dari awal string dan satu lagi dari akhir string. Setiap langkah, kita bisa bandingkan nilai kedua pointer dan lihat apakah mereka memenuhi sifat palindrom.

Pendekatan yang simpel untuk menyelesaikan masalah ini adalah dengan menggunakan nested loop, dengan kompleksitas waktu \\( O(n^2) \\). Tapi, dengan menggunakan dua pointer yang bergerak ke arah tengah dari kedua ujung, kita bisa memanfaatkan properti simetri dari string palindrom. Ini memungkinkan kita membandingkan elemen-elemen dalam satu iterasi, membuat algoritma lebih efisien dengan kompleksitas waktu \\( O(n) \\).

Berikut cara pointer bergerak sepanjang string:
```
> a b c c b a
  ^         ^
> a b c c b a
    ^     ^
> a b c c b a
      ^ ^
```
Jadi, konsep two pointers sebenarnya adalah menerapkan strategi potongan dan pencarian. Tiap langkahnya, kita bisa dengan aman memangkas—artinya, menghilangkan—beberapa opsi solusi.

## Apakah masalah saya cocok dengan strategi ini?
Ya, jika kondisinya seperti ini:
- datanya linier, seperti array, list, linked-list, atau string
- fokus pada sebagian elemen data.

## Contoh implementasi
Banyak situasi di dunia nyata menggunakan pola dua petunjuk. Ini beberapa contohnya:

- **Manajemen Memori:** Dalam alokasi dan dealokasi memori, two pointers penting digunakan. Blok memori yang tersedia diwakili oleh penunjuk awal dan akhir. Ketika memori dialokasikan, penunjuk awal digeser ke depan menunjuk ke blok yang baru dialokasikan. Sebaliknya, saat memori dibebaskan, penunjuk awal digeser ke belakang menandai area yang telah didealokasi sebagai tersedia untuk alokasi di masa mendatang.

- **Saran Produk:** Di dunia belanja online, ketika pelanggan melihat keranjang mereka dan total belanja belum mencapai batas untuk pengiriman gratis, kita bisa menyarankan pasangan produk yang jika ditambahkan ke keranjang akan membuat total belanja mencapai syarat untuk pengiriman gratis. two pointers bisa digunakan untuk menyarankan pasangan produk yang dapat memenuhi syarat tersebut.