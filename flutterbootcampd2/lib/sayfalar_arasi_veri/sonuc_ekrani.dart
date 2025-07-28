import 'package:flutter/material.dart';
import 'package:flutterbootcampd2/sayfalar_arasi_veri/anasayfa.dart';
import 'package:flutterbootcampd2/sayfalar_arasi_veri/oyun_ekrani.dart';

class SonucEkrani extends StatefulWidget {
  const SonucEkrani({super.key});

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sonuç Ekranı"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
  
            }, child: const Text("Geri Dön")),
            ElevatedButton(onPressed: (){
              Navigator.of(context).popUntil((Route)=>Route.isFirst);
             
            }, child: const Text("Anasayfaya Geri Dön")),
          ],
        ),
      ),
    );
  }
}