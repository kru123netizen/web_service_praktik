import 'package:flutter/material.dart';

class ListViewSeparatedPage extends StatefulWidget {
  const ListViewSeparatedPage(
      {super.key}); // Konstruktor untuk ListViewSeparatedPage, menggunakan super.key untuk kunci.

  @override
  State<ListViewSeparatedPage> createState() =>
      _ListViewSeparatedPageState(); // Mengembalikan instance dari _ListViewSeparatedPageState.
}

class _ListViewSeparatedPageState extends State<ListViewSeparatedPage> {
  // Membuat daftar data dengan 100 elemen menggunakan List.generate.
  List<String> listData = List<String>.generate(100, (index) => 'Data $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat tampilan dasar dengan AppBar dan body.
      appBar: AppBar(
        title: const Text(
          // Judul AppBar.
          'List View Sparated',
          style: TextStyle(
            fontSize: 16, // Mengatur ukuran font.
            fontWeight: FontWeight.w600, // Mengatur ketebalan font.
          ),
        ),
      ),
      body: SafeArea(
        // Memastikan konten tidak tertutup oleh notch atau status bar.
        child: ListView.separated(
          // Menggunakan ListView.separated untuk membuat daftar dengan pemisah.
          itemCount: listData
              .length, // Mengatur jumlah item dalam daftar berdasarkan panjang listData.
          shrinkWrap:
              true, // Mengatur agar daftar tidak menggunakan lebih banyak ruang dari yang diperlukan.
          physics:
              const BouncingScrollPhysics(), // Mengatur efek gulir elastis.
          padding: EdgeInsets.zero, // Mengatur padding di sekitar ListView.
          itemBuilder: (context, index) => ListTile(
            // Membangun setiap item dalam daftar.
            dense: true, // Mengatur agar ListTile lebih padat.
            title: Text(
              // Teks yang ditampilkan di dalam ListTile.
              listData[
                  index], // Mengambil data dari listData berdasarkan index.
              style: const TextStyle(
                fontSize: 16, // Mengatur ukuran font.
              ),
            ),
          ),
          separatorBuilder: (context, index) => const Divider(
              height: 1), // Menambahkan pemisah (Divider) antara item.
        ),
      ),
    );
  }
}
