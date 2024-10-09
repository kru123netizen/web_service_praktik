import 'package:flutter/material.dart';

class GridViewCustomPage extends StatefulWidget {
  const GridViewCustomPage(
      {super.key}); // Konstruktor untuk GridViewCustomPage, menggunakan super.key untuk kunci.

  @override
  State<GridViewCustomPage> createState() =>
      _GridViewCustomPageState(); // Mengembalikan instance dari _GridViewCustomPageState.
}

class _GridViewCustomPageState extends State<GridViewCustomPage> {
  // Membuat daftar produk dengan 50 elemen menggunakan List.generate.
  List<String> listProduct =
      List<String>.generate(50, (index) => 'Product $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat tampilan dasar dengan AppBar dan body.
      appBar: AppBar(
        title: const Text(
          // Judul AppBar.
          'GridView Custom',
          style: TextStyle(
            fontSize: 16, // Mengatur ukuran font.
            fontWeight: FontWeight.w600, // Mengatur ketebalan font.
          ),
        ),
      ),
      body: SafeArea(
        // Memastikan konten tidak tertutup oleh notch atau status bar.
        child: GridView.custom(
          // Menggunakan GridView.custom untuk membuat grid dengan kustomisasi lebih.
          physics:
              const BouncingScrollPhysics(), // Mengatur efek gulir elastis.
          padding:
              const EdgeInsets.all(16), // Mengatur padding di sekitar GridView.
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            // Mengatur pengaturan grid dengan jumlah kolom tetap.
            crossAxisCount: 3, // Mengatur jumlah kolom menjadi 3.
            mainAxisSpacing: 12, // Mengatur jarak vertikal antara item.
            crossAxisSpacing: 12, // Mengatur jarak horizontal antara item.
          ),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            // Membangun item secara dinamis.
            if (index == 0) {
              // Memeriksa jika index adalah 0.
              return Container(
                // Mengembalikan kontainer untuk item pertama.
                decoration: BoxDecoration(
                  // Mengatur dekorasi kontainer.
                  color: Colors
                      .red, // Mengatur warna latar belakang menjadi merah.
                  borderRadius: BorderRadius.circular(
                      8), // Mengatur sudut kontainer menjadi melengkung.
                ),
                child: Center(
                  // Mengatur teks agar berada di tengah kontainer.
                  child: Text(
                    listProduct[
                        index], // Mengambil nama produk dari listProduct berdasarkan index.
                    style: const TextStyle(
                      fontSize: 16, // Mengatur ukuran font.
                      fontWeight: FontWeight.w600, // Mengatur ketebalan font.
                      color: Colors.white, // Mengatur warna teks menjadi putih.
                    ),
                    textAlign: TextAlign
                        .center, // Mengatur teks agar berada di tengah.
                  ),
                ),
              );
            } else {
              // Jika bukan item pertama.
              return Container(
                // Mengembalikan kontainer untuk item lainnya.
                decoration: BoxDecoration(
                  // Mengatur dekorasi kontainer.
                  color: Colors
                      .blue, // Mengatur warna latar belakang menjadi biru.
                  borderRadius: BorderRadius.circular(
                      8), // Mengatur sudut kontainer menjadi melengkung.
                ),
                child: Center(
                  // Mengatur teks agar berada di tengah kontainer.
                  child: Text(
                    listProduct[
                        index], // Mengambil nama produk dari listProduct berdasarkan index.
                    style: const TextStyle(
                      fontSize: 16, // Mengatur ukuran font.
                      fontWeight: FontWeight.w600, // Mengatur ketebalan font.
                      color: Colors.white, // Mengatur warna teks menjadi putih.
                    ),
                    textAlign: TextAlign
                        .center, // Mengatur teks agar berada di tengah.
                  ),
                ),
              );
            }
          },
              childCount:
                  listProduct.length), // Mengatur jumlah item yang akan dibuat.
        ),
      ),
    );
  }
}
