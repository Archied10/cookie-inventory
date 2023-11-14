# PBP Ganjil 23/24 - Tugas

Ini merupakan solusi saya dari [Tugas PBP Ganjil 23/24](https://pbp-fasilkom-ui.github.io/ganjil-2024/assignments). Solusi ini dibuat oleh Mika Ahmad Al Husseini dengan NPM 2206826476.

## Table of Contents

- [Overview](#overview)
    - [Links](#links)
- [Questions and Answers Tugas 7](#questions-and-answers-tugas-7)
    - [Stateless dan Stateful Widget](#stateless-dan-stateful-widget)
    - [Widget yang Digunakan](#widget-yang-digunakan)
    - [Langkah Pengerjaan VII](#langkah-pengerjaan-vii)
- [Questions and Answers Tugas 8](#questions-and-answers-tugas-8)
    - [push dan pushReplacement](#push-dan-pushreplacement)
    - [Layout Widget pada Flutter](#layout-widget-pada-flutter)
    - [Elemen Input pada Form](#elemen-input-pada-form)
    - [Clean Architecture](#clean-architecture)
    - [Langkah Pengerjaan VII](#langkah-pengerjaan-viii)
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

## Questions and Answers Tugas 8

### push dan pushReplacement
Jelaskan perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`, disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
- Perbedaan utama keduanya adalah `Navigator.push()` menambahkan sebuah screen baru di paling atas stack, sedangkan `Navigator.pushReplacement()` mengganti screen saat ini dengan screen yang baru.
- Misalkan sebuah aplikasi memiliki screen login dan home. `Navigator.push()` dapat digunakan untuk navigasi dari screen login ke screen home dan home akan ditambahkan ke atas stack, sehingga user dapat navigasi kembali ke login dengan menggunakan tombol back. Di sisi lain, jika menggunakan `Navigator.pushReplacement()` screen login akan digantikan oleh screen home dan user tidak dapat navigasi kembali ke screen login.

Referensi: [Navigator class](https://api.flutter.dev/flutter/widgets/Navigator-class.html)

### Layout Widget pada Flutter
Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
- Center: Digunakan untuk menempatkan widget di tengah-tengah layar. Misalnya, untuk menempatkan teks atau gambar secara terpusat di layar.
- Column: Digunakan untuk menempatkan widget secara vertikal, sehingga widget-widget di dalamnya akan ditata dari atas ke bawah. Cocok digunakan untuk menampilkan daftar item atau tata letak vertikal lainnya.
- Row: Sama seperti Column, tetapi digunakan untuk menempatkan widget secara horizontal, sehingga widget-widget di dalamnya akan ditata dari kiri ke kanan. Cocok digunakan untuk menampilkan tata letak horizontal seperti menu atau baris data.
- Flexible: Digunakan untuk memberikan widget fleksibilitas dalam menyesuaikan ruang yang tersedia. Cocok digunakan untuk menyesuaikan ukuran widget sesuai dengan ruang yang tersedia.
- Expanded: Mirip dengan Flexible, tetapi digunakan untuk mengisi ruang yang tersedia sepenuhnya. Cocok digunakan untuk mengisi ruang yang tersedia dalam Row atau Column.
- Align: Digunakan untuk mengatur tata letak widget dengan cara menentukan bagaimana widget tersebut diatur dalam ruang yang tersedia, baik secara horizontal maupun vertikal.
- GridView: Digunakan untuk menampilkan daftar item dalam bentuk grid. Cocok digunakan untuk menampilkan data dalam format grid, seperti galeri foto atau tampilan data terstruktur.
- Padding: digunakan untuk menambahkan ruang kosong di sekitar widget lainnya, seperti Container, Row, atau Column.

Referensi: [Layout widgets](https://docs.flutter.dev/ui/widgets/layout)

### Elemen Input pada Form
Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
- Pada form, saya menggunakan elemen input `TextFormField`. `TextFormField` adalah sebuah widget yang terintegrasi dengan Form dan digunakan untuk membuat input field teks dalam aplikasi Flutter. Saya menggunakan elemen input tersebut karena memiliki properti validator yang dapat digunakan untuk memvalidasi input field, sehingga memastikan bahwa input yang dimasukkan oleh pengguna sesuai dengan format yang diinginkan.

Referensi: [TextFormField class](https://api.flutter.dev/flutter/material/TextFormField-class.html)

### Clean Architecture
Bagaimana penerapan clean architecture pada aplikasi Flutter?
- Clean architecture adalah pola desain software yang membantu developer dalam menulis kode yang dapat dipelihara dengan lebih mudah. Dengan memisahkan lapisan presentasi, lapisan domain, dan lapisan data, clean architecture memudahkan dalam memodifikasi dan memperluas kode tanpa menambahkan kompleksitas yang tidak perlu. Penerapan clean architecture membantu dalam mengurangi biaya pemeliharaan dan risiko kerusakan yang tidak disengaja dalam pengembangan aplikasi Flutter.

Referensi: [Flutter Clean Architecture Template](https://belajarinformatika.com/flutter-clean-architecture-template/)

### Langkah Pengerjaan VIII
- Pertama, saya membuat halaman formulir di mana user dapat menginput elemen `name`, `amount`, `description`, `rarity`, `lc_path`, `base_atk`, `base_hp`, dan `base_def`. Tiap elemen input tersebut akan divalidasi sesuai dengan tipe datanya. Ketika user klik tombol save, maka akan muncul pop-up yang berisikan data yang diinput.Data yang diinput juga akan disimpan di dalam list.
- Kedua, saya membuat tombol `Tambah Item` dan `Lihat Item` menjadi berfungsi. Ketika ditekan, tombol-tombol tersebut akan menuju page yang bersesuaian.
- Ketiga, saya membuat drawer yang berisikan opsi navigasi ke halaman utama, tambah item, dan lihat item.
- Keempat, saya melakukan refactoring file agar dapat mempermudah pengerjaan proyek untuk kedepannya.
- Terakhir, saya menambahkan page baru untuk menampilkan item yang diinput user dalam bentuk tabel.

## Useful resources

- [Flutter](https://api.flutter.dev/index.html) - Website ini membantu saya dalam memahami Flutter.
- [Stack Overflow](https://stackoverflow.com/) - Website ini membantu saya ketika kode saya mengalami eror.

## Author

- Website - [Archied10](https://github.com/Archied10)