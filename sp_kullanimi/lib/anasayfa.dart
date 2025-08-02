import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac=0;
  @override
  void initState() {
    
    super.initState();
    sayacKontrol();
  }

  Future<void> sayacKontrol() async{
    var sp = await SharedPreferences.getInstance();
    sayac = sp.getInt("sayac") ?? 0;
    setState(() {
      sayac += 1;
    });
    sp.setInt("sayac", sayac);

  }

  Future<void> test() async{
    var sp = await SharedPreferences.getInstance();

    // Veri Kaydı
    sp.setString("ad", "Akın");
    sp.setInt("yas", 27);
    sp.setDouble("boy", 1.87);
    sp.setBool("bekar", true);
    
    var arkadasListesi = <String>[];
    arkadasListesi.add("Ali");
    arkadasListesi.add("Mesut");
    sp.setStringList("arkadasListesi", arkadasListesi);

    


    // Veri Silme


    // Veri Okuma
    String gelenAd = sp.getString("ad") ?? "isim yok";
    int gelenYas = sp.getInt("yas") ?? 0;
    double gelenBoy = sp.getDouble("boy") ?? 0;
    bool gelenBekar = sp.getBool("bekar") ?? false;
    print("Gelen ad: $gelenAd");
    print("Gelen yas: $gelenYas");
    print("Gelen boy: $gelenBoy");
    print("Gelen bekar: $gelenBekar");

    var gelenArkadasListesi = sp.getStringList("arkadasListesi") ?? null;
    if(gelenArkadasListesi!=null){
      for(var a in arkadasListesi){
        print("Arkadaş :$a");
      }

    }



    
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shared Preferences"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Açılış sayısı : $sayac",style: TextStyle(fontSize: 50),),
          ],
        ),
      ),
    );
  }
}