import 'dart:math';

import 'package:flutter/material.dart';

class ElevatedButtonPage extends StatefulWidget {
  const ElevatedButtonPage(
      {super.key}); // Konstruktor untuk ElevatedButtonPage, menggunakan super.key untuk kunci.

  @override
  State<ElevatedButtonPage> createState() =>
      _ElevatedButtonPageState(); // Mengembalikan instance dari _ElevatedButtonPageState.
}

class _ElevatedButtonPageState extends State<ElevatedButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat tampilan dasar dengan AppBar dan body.
      appBar: AppBar(
        title: const Text(
          // Judul AppBar.
          'ElevatedButton',
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
          padding: const EdgeInsets.all(16), // Padding di semua sisi.
          child: Column(
            // Mengatur anak-anak dalam bentuk kolom.
            mainAxisAlignment: MainAxisAlignment
                .center, // Mengatur posisi anak-anak di tengah kolom.
            children: [
              ElevatedButton(
                // Tombol elevated pertama.
                onPressed: () =>
                    log, // Fungsi yang dijalankan ketika tombol ditekan (dapat diperbaiki untuk menyimpan log).
                style: ElevatedButton.styleFrom(
                  // Mengatur gaya tombol.
                  backgroundColor:
                      Colors.indigo, // Warna latar belakang tombol.
                  foregroundColor: Colors.white, // Warna teks tombol.
                ),
                child: const Text(
                  // Teks pada tombol.
                  'Click Me',
                ),
              ),
              const SizedBox(height: 16), // Jarak vertikal antara tombol.
              ElevatedButton.icon(
                // Tombol elevated dengan ikon.
                onPressed: () =>
                    log, // Fungsi yang dijalankan ketika tombol ditekan (dapat diperbaiki untuk menyimpan log).
                style: ElevatedButton.styleFrom(
                  // Mengatur gaya tombol.
                  backgroundColor: Colors.green, // Warna latar belakang tombol.
                  foregroundColor: Colors.white, // Warna teks tombol.
                ),
                icon: const Icon(
                  // Ikon yang ditampilkan di sebelah kiri teks.
                  Icons.play_arrow_rounded,
                ),
                label: const Text(
                  // Teks pada tombol.
                  'Click Me',
                ),
              ),
              const SizedBox(height: 16), // Jarak vertikal antara tombol.
              SizedBox(
                // Kontainer untuk mengatur ukuran tombol kedua.
                width:
                    double.maxFinite, // Membuat tombol memenuhi lebar maksimum.
                height: 48, // Tinggi tombol.
                child: ElevatedButton.icon(
                  // Tombol elevated kedua dengan ikon.
                  onPressed: () =>
                      log, // Fungsi yang dijalankan ketika tombol ditekan (dapat diperbaiki untuk menyimpan log).
                  style: ElevatedButton.styleFrom(
                      // Mengatur gaya tombol.
                      backgroundColor:
                          Colors.blue, // Warna latar belakang tombol.
                      foregroundColor: Colors.white, // Warna teks tombol.
                      shape: RoundedRectangleBorder(
                          // Mengatur bentuk tombol.
                          borderRadius: BorderRadius.circular(
                              8))), // Radius sudut tombol.
                  icon: const Icon(
                    // Ikon yang ditampilkan di sebelah kiri teks.
                    Icons.play_arrow_rounded,
                  ),
                  label: const Text(
                    // Teks pada tombol.
                    'Click Me',
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
