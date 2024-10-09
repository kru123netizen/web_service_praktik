import 'package:flutter/material.dart';

class IconPage extends StatefulWidget {
  const IconPage(
      {super.key}); // Konstruktor untuk IconPage, menggunakan super.key untuk kunci.

  @override
  State<IconPage> createState() =>
      _IconPageState(); // Mengembalikan instance dari _IconPageState.
}

class _IconPageState extends State<IconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat tampilan dasar dengan AppBar dan body.
      appBar: AppBar(
        title: const Text(
          // Judul AppBar.
          'Icon',
          style: TextStyle(
            fontSize: 16, // Mengatur ukuran font.
            fontWeight: FontWeight.w600, // Mengatur ketebalan font.
          ),
        ),
      ),
      body: const SafeArea(
          // Memastikan konten tidak tertutup oleh notch atau status bar.
          child: Center(
        // Menempatkan konten di tengah layar.
        child: Column(
          // Mengatur anak-anak dalam bentuk kolom.
          mainAxisAlignment: MainAxisAlignment
              .center, // Mengatur posisi anak-anak di tengah kolom.
          children: [
            Row(
              // Baris pertama untuk ikon.
              mainAxisAlignment: MainAxisAlignment
                  .center, // Mengatur posisi anak-anak di tengah baris.
              children: [
                Icon(
                  // Ikon jempol naik.
                  Icons
                      .thumb_up_rounded, // Menggunakan ikon dari Material Icons.
                ),
                SizedBox(width: 16), // Jarak horizontal antara ikon.
                Icon(
                  // Ikon jempol turun.
                  Icons
                      .thumb_down_rounded, // Menggunakan ikon dari Material Icons.
                ),
              ],
            ),
            SizedBox(height: 16), // Jarak vertikal antara baris.
            Row(
              // Baris kedua untuk ikon yang lebih besar dan berwarna.
              mainAxisAlignment: MainAxisAlignment
                  .center, // Mengatur posisi anak-anak di tengah baris.
              children: [
                Icon(
                  // Ikon jempol naik dengan pengaturan warna dan ukuran.
                  Icons.thumb_up_rounded,
                  color: Colors.blue, // Mengatur warna ikon menjadi biru.
                  size: 32, // Mengatur ukuran ikon.
                ),
                SizedBox(width: 16), // Jarak horizontal antara ikon.
                Icon(
                  // Ikon jempol turun dengan pengaturan warna dan ukuran.
                  Icons.thumb_down_rounded,
                  color: Colors.red, // Mengatur warna ikon menjadi merah.
                  size: 32, // Mengatur ukuran ikon.
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
