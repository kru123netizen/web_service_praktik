import 'package:flutter/material.dart';

class PenerapanContainerPage extends StatefulWidget {
  const PenerapanContainerPage(
      {super.key}); // Konstruktor untuk PenerapanContainerPage, menggunakan super.key untuk kunci.

  @override
  State<PenerapanContainerPage> createState() =>
      _PenerapanContainerPageState(); // Mengembalikan instance dari _PenerapanContainerPageState.
}

class _PenerapanContainerPageState extends State<PenerapanContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat tampilan dasar dengan AppBar dan body.
      appBar: AppBar(
        title: const Text(
          // Judul AppBar.
          'Penerapan Container',
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
        child: Container(
          // Membuat kontainer dengan ukuran dan gaya tertentu.
          width: 200, // Lebar kontainer.
          height: 200, // Tinggi kontainer.
          padding: const EdgeInsets.all(16), // Padding di dalam kontainer.
          margin: const EdgeInsets.all(16), // Margin di luar kontainer.
          decoration: BoxDecoration(
            // Mengatur dekorasi kontainer.
            color: Colors.indigo, // Warna latar belakang kontainer.
            borderRadius: BorderRadius.circular(8), // Radius sudut kontainer.
            boxShadow: const [
              // Menambahkan bayangan pada kontainer.
              BoxShadow(
                color: Colors.black26, // Warna bayangan.
                blurRadius: 12, // Blur radius bayangan.
                spreadRadius: 4, // Jarak bayangan dari kontainer.
                offset: Offset(0, 4), // Offset bayangan (posisi).
              )
            ],
          ),
          child: const Center(
            // Menempatkan teks di tengah kontainer.
            child: Text(
              'Contoh penerapan container.', // Teks yang ditampilkan di dalam kontainer.
              style: TextStyle(
                color: Colors.white, // Warna teks.
                fontSize: 20, // Ukuran font teks.
                fontWeight: FontWeight.w600, // Ketebalan font teks.
              ),
              textAlign:
                  TextAlign.center, // Mengatur teks agar berada di tengah.
            ),
          ),
        ),
      )),
    );
  }
}
