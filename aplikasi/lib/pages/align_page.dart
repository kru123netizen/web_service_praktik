import 'package:flutter/material.dart';

class AlignPage extends StatefulWidget {
  const AlignPage(
      {super.key}); // Konstruktor untuk AlignPage, menggunakan super.key untuk kunci.

  @override
  State<AlignPage> createState() =>
      _AlignPageState(); // Mengembalikan instance dari _AlignPageState.
}

class _AlignPageState extends State<AlignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat tampilan dasar dengan AppBar dan body.
      appBar: AppBar(
        title: const Text(
          // Judul AppBar.
          'Align',
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
            Padding(
              // Menggunakan Padding untuk memberikan jarak di sekeliling konten.
              padding: const EdgeInsets.all(16), // Padding di semua sisi.
              child: Column(
                // Mengatur anak-anak dalam bentuk kolom.
                mainAxisAlignment: MainAxisAlignment
                    .center, // Mengatur posisi anak-anak di tengah kolom.
                children: [
                  Align(
                    // Menempatkan kontainer pertama di tengah.
                    alignment: Alignment
                        .center, // Mengatur posisi kontainer di tengah.
                    child: Container(
                      width: 50, // Lebar kontainer.
                      height: 50, // Tinggi kontainer.
                      color: Colors.blue, // Warna kontainer.
                    ),
                  ),
                  const SizedBox(
                      height: 16), // Jarak vertikal antara kontainer.
                  Align(
                    // Menempatkan kontainer kedua di kiri tengah.
                    alignment: Alignment
                        .centerLeft, // Mengatur posisi kontainer ke kiri.
                    child: Container(
                      width: 50, // Lebar kontainer.
                      height: 50, // Tinggi kontainer.
                      color: Colors.purple, // Warna kontainer.
                    ),
                  ),
                  Align(
                    // Menempatkan kontainer ketiga di kanan tengah.
                    alignment: Alignment
                        .centerRight, // Mengatur posisi kontainer ke kanan.
                    child: Container(
                      width: 50, // Lebar kontainer.
                      height: 50, // Tinggi kontainer.
                      color: Colors.orange, // Warna kontainer.
                    ),
                  ),
                ],
              ),
            ),
            Align(
              // Menempatkan kontainer keempat di sudut kiri atas.
              alignment:
                  Alignment.topLeft, // Mengatur posisi kontainer ke kiri atas.
              child: Container(
                width: 50, // Lebar kontainer.
                height: 50, // Tinggi kontainer.
                color: Colors.red, // Warna kontainer.
              ),
            ),
            Align(
              // Menempatkan kontainer kelima di sudut kanan bawah.
              alignment: Alignment
                  .bottomRight, // Mengatur posisi kontainer ke kanan bawah.
              child: Container(
                width: 50, // Lebar kontainer.
                height: 50, // Tinggi kontainer.
                color: Colors.pink, // Warna kontainer.
              ),
            )
          ],
        ),
      ),
    );
  }
}
