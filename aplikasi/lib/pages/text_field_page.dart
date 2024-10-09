import 'package:flutter/material.dart';
import 'dart:developer';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage(
      {super.key}); // Konstruktor untuk TextFieldPage, menggunakan super.key untuk kunci.

  @override
  State<TextFieldPage> createState() =>
      _TextFieldPageState(); // Mengembalikan instance dari _TextFieldPageState.
}

class _TextFieldPageState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat tampilan dasar dengan AppBar dan body.
      appBar: AppBar(
        title: const Text(
          // Judul AppBar.
          'TextField',
          style: TextStyle(
            fontSize: 16, // Mengatur ukuran font.
            fontWeight: FontWeight.w600, // Mengatur ketebalan font.
          ),
        ),
      ),
      body: SafeArea(
        // Memastikan konten tidak tertutup oleh notch atau status bar.
        child: Center(
          // Menempatkan konten di tengah layar.
          child: Padding(
            // Memberikan padding di sekeliling konten.
            padding: const EdgeInsets.symmetric(
                horizontal: 16), // Padding horizontal.
            child: Column(
              // Mengatur anak-anak dalam bentuk kolom.
              children: [
                const TextField(
                  // TextField pertama untuk nama lengkap.
                  decoration: InputDecoration(
                    // Mengatur dekorasi dari TextField.
                    labelText: 'Full Name', // Label di atas field.
                    hintText: 'Enter full name', // Teks petunjuk dalam field.
                  ),
                  maxLength:
                      50, // Maksimal panjang karakter yang dapat dimasukkan.
                ),
                const SizedBox(height: 16), // Jarak vertikal antara TextFields.
                const TextField(
                  // TextField kedua untuk nomor telepon.
                  decoration: InputDecoration(
                    // Mengatur dekorasi dari TextField.
                    labelText: 'Phone Number', // Label di atas field.
                    hintText:
                        'Enter phone number', // Teks petunjuk dalam field.
                    filled: true, // Mengatur agar latar belakang terisi.
                  ),
                  keyboardType:
                      TextInputType.number, // Mengatur keyboard untuk angka.
                  maxLength:
                      13, // Maksimal panjang karakter yang dapat dimasukkan.
                ),
                const SizedBox(height: 16), // Jarak vertikal.
                const TextField(
                  // TextField ketiga untuk email.
                  decoration: InputDecoration(
                    // Mengatur dekorasi dari TextField.
                    labelText: 'Email', // Label di atas field.
                    hintText:
                        'Enter email address', // Teks petunjuk dalam field.
                    border: OutlineInputBorder(), // Mengatur border field.
                    prefixIcon: Icon(
                      // Ikon yang ditampilkan di kiri field.
                      Icons.email_rounded,
                    ),
                  ),
                  keyboardType: TextInputType
                      .emailAddress, // Mengatur keyboard untuk email.
                  maxLength:
                      50, // Maksimal panjang karakter yang dapat dimasukkan.
                ),
                const SizedBox(height: 16), // Jarak vertikal.
                TextField(
                  // TextField keempat untuk password.
                  obscureText: true, // Mengaburkan teks untuk keamanan.
                  decoration: InputDecoration(
                    // Mengatur dekorasi dari TextField.
                    labelText: 'Password', // Label di atas field.
                    hintText: 'Enter password', // Teks petunjuk dalam field.
                    border:
                        const OutlineInputBorder(), // Mengatur border field.
                    prefixIcon: const Icon(
                      // Ikon yang ditampilkan di kiri field.
                      Icons.password_rounded,
                    ),
                    suffixIcon: IconButton(
                      // Ikon tombol di kanan field untuk mengubah visibilitas.
                      icon: const Icon(
                        Icons.visibility_off_rounded,
                      ),
                      onPressed: () => log(
                          'Update password visibility'), // Fungsi yang dijalankan ketika ikon ditekan.
                    ),
                  ),
                  maxLength:
                      20, // Maksimal panjang karakter yang dapat dimasukkan.
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
