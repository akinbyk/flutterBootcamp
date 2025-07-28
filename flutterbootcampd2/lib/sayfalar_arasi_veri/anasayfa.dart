import 'package:flutter/material.dart';
import 'package:flutterbootcampd2/sayfalar_arasi_veri/kisiler.dart';
import 'package:flutterbootcampd2/sayfalar_arasi_veri/oyun_ekrani.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;
  bool kontrol=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("init state çalıştı");
  }

  Future<int> toplama(int sayi1,int sayi2) async{
    int toplam=sayi1+sayi2;
    return toplam;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Anasayfa"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuç : $sayac"),
            ElevatedButton(onPressed: (){
              setState(() {
                sayac+=1;
              });

            }, child: const Text("Tıkla")),
            ElevatedButton(onPressed: (){
              var kisi = Kisiler(ad: "Akın", yas: 28 , boy: 1.88, bekar: true);
              Navigator.push(context, MaterialPageRoute(builder: (context) => OyunEkrani(kisi: kisi,)) )
              .then((value){
                print("anasayfaya dönüldü");

              });
            }, child: const Text("Başla")),
            Visibility(visible:kontrol,child: const Text("Merhaba")),
            Text(kontrol ? "Merhaba" : "Güle Güle",style: TextStyle(color: kontrol ? Colors.blue : Colors.red,),),
            ((){
              if(kontrol){
                return const Text("merhaba",style: TextStyle(color: Colors.blue,),);
              }else{
                return const Text("güle güle",style: TextStyle(color: Colors.red),);
              }
            }()),
            ElevatedButton(onPressed: (){
              setState(() {kontrol = true;});
            }, child: const Text("Durum 1 (True)")),
            ElevatedButton(onPressed: (){
              setState(() {kontrol = false;});
            }, child: const Text("Durum 1 (False)")),
            FutureBuilder<int>(
              future: toplama(10, 20),
              builder: (context, snapshot){
                if(snapshot.hasError){
                  return const Text("hata oluştu");
                }
                if(snapshot.hasData){
                  return Text("Sonuç : ${snapshot.data}");

                }else{
                  return const Text("Sonuç yok");
                }
                
              },

            ),
          ],
        ),
      ),
    );
  }
}