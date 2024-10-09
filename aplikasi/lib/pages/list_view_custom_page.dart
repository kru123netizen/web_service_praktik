import 'package:flutter/material.dart';

class ListViewCustomPage extends StatefulWidget {
  const ListViewCustomPage(
      {super.key}); // Konstruktor untuk ListViewCustomPage, menggunakan super.key untuk kunci.

  @override
  State<ListViewCustomPage> createState() =>
      _ListViewCustomPageState(); // Mengembalikan instance dari _ListViewCustomPageState.
}

class _ListViewCustomPageState extends State<ListViewCustomPage> {
  // Membuat daftar data dengan 100 elemen menggunakan List.generate.
  List<String> listData = List<String>.generate(100, (index) => 'Data $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat tampilan dasar dengan AppBar dan body.
      appBar: AppBar(
        title: const Text(
          // Judul AppBar.
          'List View Custom',
          style: TextStyle(
            fontSize: 16, // Mengatur ukuran font.
            fontWeight: FontWeight.w600, // Mengatur ketebalan font.
          ),
        ),
      ),
      body: SafeArea(
        // Memastikan konten tidak tertutup oleh notch atau status bar.
        child: ListView.custom(
          // Menggunakan ListView.custom untuk membuat daftar dengan kustomisasi lebih.
          shrinkWrap:
              true, // Mengatur agar daftar tidak menggunakan lebih banyak ruang dari yang diperlukan.
          physics:
              const BouncingScrollPhysics(), // Mengatur efek gulir elastis.
          padding: EdgeInsets.zero, // Mengatur padding di sekitar ListView.
          childrenDelegate: SliverChildBuilderDelegate(
            // Menggunakan SliverChildBuilderDelegate untuk membangun item secara dinamis.
            (context, index) => ListTile(
              // Membangun setiap item dalam daftar.
              dense: true, // Mengatur agar ListTile lebih padat.
              title: Text(
                // Teks yang ditampilkan di dalam ListTile.
                listData[
                    index], // Mengambil data dari listData berdasarkan index.
                style: const TextStyle(
                    fontSize: 16), // Mengatur ukuran font untuk teks.
              ),
            ),
            childCount:
                listData.length, // Mengatur jumlah item yang akan dibuat.
          ),
        ),
      ),
    );
  }
}
