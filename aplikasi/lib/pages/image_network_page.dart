import 'package:flutter/material.dart';

class ImageNetworkPage extends StatefulWidget {
  const ImageNetworkPage({super.key});

  @override
  State<ImageNetworkPage> createState() => _ImageNetworkPageState();
}

class _ImageNetworkPageState extends State<ImageNetworkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Image Network',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'http://uty.ac.id/storage/web/source//1/NlvfayvGFyEFlf1R1UsqTGSUp8AwbrdlDC3e14T8.png',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.medium,
          ),
        ),
      )),
    );
  }
}
