import 'package:flutter/material.dart';

class PaddingPage extends StatefulWidget {
  const PaddingPage(
      {super.key}); // Konstruktor untuk PaddingPage, menggunakan super.key untuk kunci.

  @override
  State<PaddingPage> createState() =>
      _PaddingPageState(); // Mengembalikan instance dari _PaddingPageState.
}

class _PaddingPageState extends State<PaddingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat tampilan dasar dengan AppBar dan body.
      appBar: AppBar(
        title: const Text(
          // Judul AppBar.
          'Padding',
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
          child: Column(
            // Mengatur anak-anak dalam bentuk kolom.
            mainAxisAlignment: MainAxisAlignment
                .center, // Mengatur posisi anak-anak di tengah kolom.
            children: [
              Material(
                // Kontainer pertama tanpa padding.
                color: Colors.blue.shade100, // Warna latar belakang kontainer.
                child: const Text(
                  // Teks tanpa padding.
                  'Widget tanpa Padding',
                ),
              ),
              const SizedBox(height: 16), // Jarak vertikal antara kontainer.
              Material(
                // Kontainer kedua dengan padding di semua sisi.
                color:
                    Colors.orange.shade100, // Warna latar belakang kontainer.
                child: const Padding(
                  // Menggunakan widget Padding.
                  padding: EdgeInsets.all(16), // Padding di semua sisi.
                  child: Text(
                    'Widget dengan Padding all', // Teks dengan padding.
                  ),
                ),
              ),
              const SizedBox(height: 16), // Jarak vertikal.
              Material(
                // Kontainer ketiga dengan padding simetris.
                color: Colors.pink.shade100, // Warna latar belakang kontainer.
                child: const Padding(
                  // Menggunakan widget Padding.
                  padding: EdgeInsets.symmetric(
                    // Padding simetris.
                    horizontal: 32, // Padding horizontal.
                    vertical: 8, // Padding vertikal.
                  ),
                  child: Text(
                      'Widget dengan Padding Symmetric'), // Teks dengan padding simetris.
                ),
              ),
              const SizedBox(height: 16), // Jarak vertikal.
              Material(
                // Kontainer keempat dengan padding hanya pada sisi tertentu.
                color: Colors.red.shade100, // Warna latar belakang kontainer.
                child: const Padding(
                  // Menggunakan widget Padding.
                  padding: EdgeInsets.only(
                    // Padding hanya pada sisi tertentu.
                    left: 32, // Padding di sisi kiri.
                    right: 16, // Padding di sisi kanan.
                    top: 16, // Padding di sisi atas.
                    bottom: 8, // Padding di sisi bawah.
                  ),
                  child: Text(
                    // Teks dengan padding khusus.
                    'Widget dengan Padding Only',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
