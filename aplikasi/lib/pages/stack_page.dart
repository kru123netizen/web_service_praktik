import 'package:flutter/material.dart';

class StackPositionedPage extends StatefulWidget {
  const StackPositionedPage(
      {super.key}); // Konstruktor untuk StackPositionedPage, menggunakan super.key untuk kunci.

  @override
  State<StackPositionedPage> createState() =>
      _StackPositionedPageState(); // Mengembalikan instance dari _StackPositionedPageState.
}

class _StackPositionedPageState extends State<StackPositionedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat tampilan dasar dengan AppBar dan body.
      appBar: AppBar(
        title: const Text(
          // Judul AppBar.
          'Stack & Positioned',
          style: TextStyle(
            fontSize: 16, // Mengatur ukuran font.
            fontWeight: FontWeight.w600, // Mengatur ketebalan font.
          ),
        ),
      ),
      body: SafeArea(
        // Memastikan konten tidak tertutup oleh notch atau status bar.
        child: Stack(
          // Menggunakan widget Stack untuk mengatur anak-anak secara bertumpuk.
          children: [
            Center(
              // Menempatkan kontainer pertama di tengah.
              child: Container(
                width: 100, // Lebar kontainer.
                height: 100, // Tinggi kontainer.
                color: Colors.blue, // Warna kontainer.
              ),
            ),
            Positioned(
              // Mengatur posisi kontainer kedua dengan tepat.
              left: 0, // Mengatur jarak dari kiri.
              right: 0, // Mengatur jarak dari kanan.
              top: 0, // Mengatur jarak dari atas.
              bottom: 0, // Mengatur jarak dari bawah.
              child: Center(
                // Menempatkan kontainer kedua di tengah.
                child: Container(
                  width: 50, // Lebar kontainer kedua.
                  height: 50, // Tinggi kontainer kedua.
                  color: Colors.red, // Warna kontainer kedua.
                ),
              ),
            ),
            Positioned(
              // Kontainer ketiga yang diposisikan di sudut kiri atas.
              left: 0, // Mengatur jarak dari kiri.
              top: 0, // Mengatur jarak dari atas.
              child: Center(
                // Menempatkan kontainer ketiga di tengah.
                child: Container(
                  width: 50, // Lebar kontainer ketiga.
                  height: 50, // Tinggi kontainer ketiga.
                  color: Colors.red, // Warna kontainer ketiga.
                ),
              ),
            ),
            Positioned(
              // Kontainer keempat yang diposisikan di sudut kanan bawah.
              right: 0, // Mengatur jarak dari kanan.
              bottom: 0, // Mengatur jarak dari bawah.
              child: Center(
                // Menempatkan kontainer keempat di tengah.
                child: Container(
                  width: 100, // Lebar kontainer keempat.
                  height: 100, // Tinggi kontainer keempat.
                  color: Colors.orange, // Warna kontainer keempat.
                ),
              ),
            ),
            Positioned(
              // Kontainer kelima yang juga diposisikan di sudut kanan bawah.
              right: 0, // Mengatur jarak dari kanan.
              bottom: 0, // Mengatur jarak dari bawah.
              child: Center(
                // Menempatkan kontainer kelima di tengah.
                child: Container(
                  width: 50, // Lebar kontainer kelima.
                  height: 50, // Tinggi kontainer kelima.
                  color: Colors.indigo, // Warna kontainer kelima.
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
