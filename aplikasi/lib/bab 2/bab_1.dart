import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  const ExpandedPage(
      {super.key}); // Konstruktor untuk ExpandedPage, menggunakan super.key untuk kunci.

  @override
  State<ExpandedPage> createState() =>
      _ExpandedPageState(); // Mengembalikan instance dari _ExpandedPageState.
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat tampilan dasar dengan AppBar dan body.
      appBar: AppBar(
        title: const Text(
          // Judul AppBar.
          'Expanded',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600), // Mengatur gaya teks.
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
            const Text(
                'The container below dont use expansion'), // Teks penjelas.
            const SizedBox(
              height: 16, // Memberikan jarak vertikal.
            ),
            Row(
              // Mengatur anak-anak dalam bentuk baris.
              mainAxisAlignment: MainAxisAlignment
                  .center, // Menempatkan anak-anak di tengah baris.
              children: [
                Container(
                  // Kontainer pertama tanpa expansion.
                  width: 50, // Lebar kontainer.
                  height: 50, // Tinggi kontainer.
                  color: Colors.orange, // Warna kontainer.
                ),
                const SizedBox(
                  width: 16, // Jarak horizontal antara kontainer.
                ),
                Container(
                  // Kontainer kedua tanpa expansion.
                  width: 50,
                  height: 50,
                  color: Colors.green,
                )
              ],
            ),
            const SizedBox(
              height: 16, // Jarak vertikal setelah baris.
            ),
            const Text(
                'The container below uses expansion'), // Teks penjelas untuk bagian expansion.
            const SizedBox(
              height: 16, // Jarak vertikal.
            ),
            Row(
              // Baris kedua yang menggunakan Expanded.
              children: [
                Expanded(
                  // Menggunakan Expanded untuk kontainer pertama.
                  child: Container(
                    width: 50, // Lebar kontainer yang akan diperluas.
                    height: 50,
                    color: Colors.amber, // Warna kontainer.
                  ),
                ),
                const SizedBox(
                  width: 16, // Jarak horizontal antara kontainer.
                ),
                Expanded(
                  // Menggunakan Expanded untuk kontainer kedua.
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
