import 'package:flutter/material.dart';
import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';
import 'package:kisiler_uygulamasi/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/ui/cubit/detay_sayfa_cubit.dart';

// ignore: must_be_immutable
class DetaySayfa extends StatefulWidget {
  Kisiler kisi;

  DetaySayfa({required this.kisi});


  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {

  var tfKisiAdi = TextEditingController();
  var tfkisiTel = TextEditingController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var kisi = widget.kisi;
    tfKisiAdi.text=kisi.kisi_ad;
    tfkisiTel.text=kisi.kisi_tel;


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kişiler"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50,right: 50),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(controller: tfKisiAdi,decoration: const InputDecoration(hintText: "Kişi Ad"),),
              TextField(controller: tfkisiTel,decoration: const InputDecoration(hintText: "Kişi Tel"),),
              ElevatedButton(onPressed: (){
                context.read<DetaySayfaCubit>().krepo.guncelle(widget.kisi.kisi_id, tfKisiAdi.text, tfkisiTel.text);
              }, child: const Text("Güncelle")),
          
            ],
          ),
        ),
      ),
    );
  }
}