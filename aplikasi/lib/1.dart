// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:aplikasi/bab 2/bab2.dart';
import 'package:aplikasi/bab 2/bab_1.dart';
import 'package:aplikasi/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'quick note',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
            useMaterial3: true),
        initialRoute: '/',
        routes: {
          '/': (context) => const CenterPage(),
          '/detail': (context) => const ExpandedPage()
        });
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
