import 'package:flutter/material.dart';

class GridViewExtentPage extends StatefulWidget {
  const GridViewExtentPage(
      {super.key}); // Konstruktor untuk GridViewExtentPage, menggunakan super.key untuk kunci.

  @override
  State<GridViewExtentPage> createState() =>
      _GridViewExtentPageState(); // Mengembalikan instance dari _GridViewExtentPageState.
}

class _GridViewExtentPageState extends State<GridViewExtentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat tampilan dasar dengan AppBar dan body.
      appBar: AppBar(
        title: const Text(
          // Judul AppBar.
          'GridView.Extent',
          style: TextStyle(
            fontSize: 16, // Mengatur ukuran font.
            fontWeight: FontWeight.w600, // Mengatur ketebalan font.
          ),
        ),
      ),
      body: SafeArea(
        // Memastikan konten tidak tertutup oleh notch atau status bar.
        child: GridView.extent(
          // Menggunakan GridView.extent untuk membuat grid dengan lebar kolom maksimum.
          maxCrossAxisExtent:
              150, // Mengatur lebar maksimum kolom menjadi 150 piksel.
          mainAxisSpacing: 12, // Mengatur jarak vertikal antara item.
          crossAxisSpacing: 12, // Mengatur jarak horizontal antara item.
          shrinkWrap:
              true, // Mengatur agar GridView mengambil ruang minimum yang dibutuhkan.
          physics:
              const BouncingScrollPhysics(), // Mengatur efek gulir elastis.
          padding:
              const EdgeInsets.all(16), // Mengatur padding di sekitar GridView.
          children: List.generate(
            // Menghasilkan daftar item sebanyak 50 elemen.
            50,
            (index) => Container(
              // Mengembalikan kontainer untuk setiap item.
              decoration: BoxDecoration(
                // Mengatur dekorasi kontainer.
                color:
                    Colors.blue, // Mengatur warna latar belakang menjadi biru.
                borderRadius: BorderRadius.circular(
                    8), // Mengatur sudut kontainer menjadi melengkung.
              ),
              child: Center(
                // Mengatur teks agar berada di tengah kontainer.
                child: Text(
                  'Product $index', // Mengambil nama produk berdasarkan index.
                  style: const TextStyle(
                    fontSize: 16, // Mengatur ukuran font.
                    fontWeight: FontWeight.w600, // Mengatur ketebalan font.
                    color: Colors.white, // Mengatur warna teks menjadi putih.
                  ),
                  textAlign:
                      TextAlign.center, // Mengatur teks agar berada di tengah.
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
