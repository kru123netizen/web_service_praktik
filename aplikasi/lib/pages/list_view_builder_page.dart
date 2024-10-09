import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatefulWidget {
  const ListViewBuilderPage(
      {super.key}); // Konstruktor untuk ListViewBuilderPage, menggunakan super.key untuk kunci.

  @override
  State<ListViewBuilderPage> createState() =>
      _ListViewBuilderPageState(); // Mengembalikan instance dari _ListViewBuilderPageState.
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {
  // Membuat daftar data dengan 100 elemen menggunakan List.generate.
  List<String> listData = List<String>.generate(100, (index) => 'Data $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat tampilan dasar dengan AppBar dan body.
      appBar: AppBar(
        title: const Text(
          // Judul AppBar.
          'List View Builder',
          style: TextStyle(
            fontSize: 16, // Mengatur ukuran font.
            fontWeight: FontWeight.w600, // Mengatur ketebalan font.
          ),
        ),
      ),
      body: SafeArea(
          // Memastikan konten tidak tertutup oleh notch atau status bar.
          child: ListView.builder(
        // Menggunakan ListView.builder untuk membuat daftar dinamis.
        itemCount: listData
            .length, // Mengatur jumlah item dalam daftar berdasarkan panjang listData.
        shrinkWrap:
            true, // Mengatur agar daftar tidak menggunakan lebih banyak ruang dari yang diperlukan.
        physics: const BouncingScrollPhysics(), // Mengatur efek gulir elastis.
        padding: EdgeInsets.zero, // Mengatur padding di sekitar ListView.
        itemBuilder: (context, index) => ListTile(
          // Membangun setiap item dalam daftar.
          dense: true, // Mengatur agar ListTile lebih padat.
          title: Text(
            // Teks yang ditampilkan di dalam ListTile.
            listData[index], // Mengambil data dari listData berdasarkan index.
            style: const TextStyle(
              fontSize: 16, // Mengatur ukuran font.
            ),
          ),
        ),
      )),
    );
  }
}
