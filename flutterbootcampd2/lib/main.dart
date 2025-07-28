import 'package:flutter/material.dart';
import 'package:flutterbootcampd2/kullanici_etkilesimi/kullanici_etkilesimi_sayfa.dart';
import 'package:flutterbootcampd2/sayfalar_arasi_veri/anasayfa.dart';
import 'package:flutterbootcampd2/bottom_nav_kullanimi/bottom_navigation_sayfa.dart';

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
      home: const KullaniciEtkilesimiSayfa(),
    );
  }
}

