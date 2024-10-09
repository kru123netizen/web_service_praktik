// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:aplikasi/bab 2/bab2.dart';
import 'package:aplikasi/bab 2/bab_1.dart';
import 'package:aplikasi/pages/align_page.dart';
import 'package:aplikasi/pages/elevated_button_page.dart';
import 'package:aplikasi/pages/grid_view_builder_page.dart';
import 'package:aplikasi/pages/grid_view_count_page.dart';
import 'package:aplikasi/pages/grid_view_custom_page.dart';
import 'package:aplikasi/pages/grid_view_extent_page.dart';
import 'package:aplikasi/pages/icon_page.dart';
import 'package:aplikasi/pages/image_local_page.dart';
import 'package:aplikasi/pages/image_network_page.dart';
import 'package:aplikasi/pages/list_view_builder_page.dart';
import 'package:aplikasi/pages/list_view_custom_page.dart';
import 'package:aplikasi/pages/list_view_default_page.dart';
import 'package:aplikasi/pages/list_view_separated_page.dart';
import 'package:aplikasi/pages/padding_page.dart';
import 'package:aplikasi/pages/penerapan_container_page.dart';
import 'package:aplikasi/pages/stack_page.dart';
import 'package:aplikasi/pages/text_field_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GridViewCountPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// SCAFFOLD
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const PushNavigationPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

// CENTER

// SIZEBOXPAGE
class SizedBoxPage extends StatefulWidget {
  const SizedBoxPage({super.key});

  @override
  State<SizedBoxPage> createState() => SizedBoxPageState();
}

class SizedBoxPageState extends State<SizedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('teks selanjutnya tidak punya distance')],
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Ini teks dan'),
              SizedBox(
                width: 24,
              ),
              Text('The next text have distance')
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
              const SizedBox(
                width: 24,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
            ],
          )
        ],
      ),
    ));
  }
}

// TEXT
class TextPage extends StatefulWidget {
  const TextPage({super.key});

  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Text',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: Text(
            'Kurnia Rahman',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 0, 0, 0),
              decoration: TextDecoration.none,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }
}

// COLUMN AND ROW
class ColumnDanRow extends StatefulWidget {
  const ColumnDanRow({super.key});

  @override
  State<ColumnDanRow> createState() => _ColumnDanRowState();
}

class _ColumnDanRowState extends State<ColumnDanRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kolom dan Baris',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.purple,
                  ),
                  const SizedBox(width: 16),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blueAccent,
                  )
                ],
              ),
              const SizedBox(height: 16),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              const SizedBox(height: 16),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Namanim extends StatefulWidget {
  const Namanim({super.key});

  @override
  State<Namanim> createState() => _NamanimState();
}

class _NamanimState extends State<Namanim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Text Field',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
      body: const SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  hintText: 'Enter Full name',
                ),
                maxLength: 50,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'NIM', hintText: 'Masukkan NIM', filled: true),
                keyboardType: TextInputType.number,
                maxLength: 13,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class PushNavigationPage extends StatefulWidget {
  const PushNavigationPage(
      {super.key}); // Konstruktor untuk PushNavigationPage.

  @override
  State<PushNavigationPage> createState() =>
      _PushNavigationPageState(); // Mengembalikan instance dari _PushNavigationPageState.
}

class _PushNavigationPageState extends State<PushNavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat tampilan dasar dengan AppBar dan body.
      appBar: AppBar(
        title: const Text(
          // Judul AppBar.
          'Push Navigation',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600), // Mengatur gaya teks.
        ),
      ),
      body: SafeArea(
          // Memastikan konten tidak tertutup oleh notch atau status bar.
          child: Center(
        child: ElevatedButton(
            onPressed: () => Navigator.push(
                // Menggunakan Navigator untuk pindah ke halaman baru.
                context,
                MaterialPageRoute(
                  builder: (context) => const CenterPage(), // Halaman tujuan.
                )),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white), // Mengatur gaya tombol.
            child: const Text('Go to detail Page')), // Teks pada tombol.
      )),
    );
  }
}

class PushreplaceNavigationPage extends StatefulWidget {
  const PushreplaceNavigationPage(
      {super.key}); // Konstruktor untuk PushreplaceNavigationPage.

  @override
  State<PushreplaceNavigationPage> createState() =>
      _PushreplaceNavigationPageState(); // Mengembalikan instance dari _PushreplaceNavigationPageState.
}

class _PushreplaceNavigationPageState extends State<PushreplaceNavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat tampilan dasar dengan AppBar dan body.
      appBar: AppBar(
        title: const Text(
          // Judul AppBar.
          'Push Replace Navigation',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600), // Mengatur gaya teks.
        ),
      ),
      body: SafeArea(
          child: Center(
        child: ElevatedButton(
            onPressed: () => Navigator.pushReplacement(
                // Menggunakan Navigator untuk mengganti halaman saat ini.
                context,
                MaterialPageRoute(
                  builder: (context) => const CenterPage(), // Halaman tujuan.
                )),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.black), // Mengatur gaya tombol.
            child: const Text('Go to detail page')), // Teks pada tombol.
      )),
    );
  }
}

// Kode yang di-commented seharusnya adalah bagian untuk penggunaan named routes.

class HomePage extends StatefulWidget {
  const HomePage({super.key}); // Konstruktor untuk HomePage.

  @override
  State<HomePage> createState() =>
      _HomePageState(); // Mengembalikan instance dari _HomePageState.
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat tampilan dasar dengan AppBar dan body.
      appBar: AppBar(
        title: const Text(
          // Judul AppBar.
          'Home',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600), // Mengatur gaya teks.
        ),
      ),
      body: SafeArea(
          child: Center(
        child: ElevatedButton(
            onPressed: () => Navigator.pushNamed(
                context, '/detail'), // Navigasi menggunakan named routes.
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white), // Mengatur gaya tombol.
            child: Text('go to detail page')), // Teks pada tombol.
      )),
    );
  }
}
