import 'package:flutter/material.dart';

class CenterPage extends StatefulWidget {
  const CenterPage({super.key});

  @override
  State<CenterPage> createState() => _CenterPageState();
}

class _CenterPageState extends State<CenterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        children: [
          const Text('Ini adalah teks di tengah'),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: 200,
            height: 100,
            color: Colors.green,
            child: const Text('Teks tanpa center'),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: 200,
            height: 100,
            color: Colors.blue,
            child: const Center(
              child: Text('Teks dengan center'),
            ),
          )
        ],
      ),
    ));
  }
}
