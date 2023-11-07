# PBP Ganjil 23/24 - Tugas

Ini merupakan solusi saya dari [Tugas PBP Ganjil 23/24](https://pbp-fasilkom-ui.github.io/ganjil-2024/assignments). Solusi ini dibuat oleh Mika Ahmad Al Husseini dengan NPM 2206826476.

## Table of Contents

- [Overview](#overview)
    - [Links](#links)
- [Questions and Answers Tugas 7](#questions-and-answers-tugas-7)
    - [Stateless dan Stateful Widget](#stateless-dan-stateful-widget)
    - [Widget yang Digunakan](#widget-yang-digunakan)
    - [Langkah Pengerjaan VII](#langkah-pengerjaan-vii)
- [Useful resources](#useful-resources)
- [Author](#author)

## Overview

### Links

- GitHub URL: [GitHub](https://github.com/Archied10/cookie-inventory)

## Questions and Answers Tugas 7

### Stateless dan Stateful Widget
Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
- **Stateless Widget** tidak memiliki state, yang berarti tidak dapat mengubah diri sendiri dari aksi internal. Widget ini dapat diubah dari event eksternal pada widget parent di pohon widget. Widget ini tidak dapat menggunakan fungsi `setState()`. Contohnya adalah kita membuat aplikasi yang berisikan Text dimana teks tersebut tidak dapat diubah lagi.
- **Stateful Widget** merupakan widget yang dapat berubah secara dinamis. Widget ini memiliki state internal yang dapat berubah seiring berjalannya waktu. Widget ini dapat menggunakan fungsi `setState()` untuk memberitahu framework bahwa terdapat objek yang berubah pada state dan akan melakukan build ulang pada widget tersebut. Contohnya adalah kita membuat aplikasi yang berisikan tombol di mana ketika kita menekannya maka tulisan pada button tersebut akan berubah.

Referensi: [Memahami Perbedaan Stateless VS Stateful Widget – Flutter](https://arbiyanto.medium.com/memahami-perbedaan-stateless-vs-stateful-widget-flutter-e8ea12e46ac)

### Widget yang Digunakan
Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
- MyApp merupakan root widget
- MaterialApp berisikan widget yang umum digunakan untuk aplikasi Material Design
- ThemeData merupakan konfigurasi dari keseluruhan tema visual pada MaterialApp
- ColorScheme mengkonfugurasi properti warna pada banyak komponen
- MyHomePage merupakan widget yang berisi home page aplikasi
- Scaffold mengimplementasikan struktur layout design visual material dasar
- AppBar merupakan komponen paling atas pada aplikasi
- Text menampilkan teks
- TextStyle memberi gaya pada teks
- SingleChildScrollView menampilkan satu child yang dapat di-scroll
- Padding menyisipkan childnya dengan padding
- Column menampilkan childnya secara vertikal
- GridView membuat grid sebagai container untuk card 
- CookieCard berisikan Teks dan Icon yang dapat diklik untuk memunculkan SnackBar
- Material sebagai interface Flutter
- InkWell sebagai area yang responsif terhadap sentuhan
- ScaffoldMessenger mengelola SnackBar
- SnackBar menampilkan pesan pada bagian bawah layar
- Container menyimpan komponen
- Center menengahkan child ke dirinya sendiri
- Icon menampilkan icon

Referensi: [Flutter SDK](https://api.flutter.dev/index.html)

### Langkah Pengerjaan VII
Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
- Pertama, saya membuat proyek baru bernama `cookie_inventory` menggunakan perintah `flutter create cookie_inventory`. Lalu, saya membuat berkas baru, yaitu `menu.dart` dan mengimport material dengan `import 'package:flutter/material.dart';`. 
- Kedua, saya memindahkan dua class yang ada pada `main.dart` ke `menu.dart` dan import menu tersebut ke main dengan `import 'package:cookie_inventory/menu.dart';`. Lalu, saya mengubah colorScheme menjadi warna `amber`.
- Ketiga, saya mengubah `MyHomePage(title: 'Flutter Demo Home Page')` sehingga menjadi `MyHomePage()` saja. Lalu, saya mengubah sifat widget halaman dari stateful menjadi stateless dengan mengextend `StatelessWidget`.
- Keempat, saya mendefinisikan class bernama `CookieItem` dengan atribut `name`, `icon`, dan `color`. Lalu, saya menambahkan item-item pada sebuah list. 
- Kelima, saya menambahkan `AppBar` dan `body` yang akan menampilkan item-item pada list dengan menggunakan `SingleChildScrollView`.
- Terakhir, saya membuat widget stateless, yaitu `CookieCard` untuk menampilkan card. Widget ini akan menampilkan teks dan icon dan ketika diklik akan menampilkan `SnackBar` dengan tulisan yang berbeda-beda untuk tiap tombol. Warna pada setiap tombol ditampilkan secara berbeda-beda.

## Useful resources

- [Flutter](https://api.flutter.dev/index.html) - Website ini membantu saya dalam memahami Flutter.
- [Stack Overflow](https://stackoverflow.com/) - Website ini membantu saya ketika kode saya mengalami eror.

## Author

- Website - [Archied10](https://github.com/Archied10)