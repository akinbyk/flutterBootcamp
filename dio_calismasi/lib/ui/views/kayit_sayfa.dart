import 'package:flutter/material.dart';
import 'package:kisiler_uygulamasi/main.dart';
import 'package:kisiler_uygulamasi/ui/cubit/kayit_sayfa_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KayitSayfa extends StatefulWidget {
  const KayitSayfa({super.key});

  @override
  State<KayitSayfa> createState() => _KayitSayfaState();
}

class _KayitSayfaState extends State<KayitSayfa> {
  var tfKisiAdi = TextEditingController();
  var tfkisiTel = TextEditingController();


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
                context.read<KayitSayfaCubit>().kaydet(tfKisiAdi.text, tfkisiTel.text);          
              }, child: const Text("Kaydet")),
          
            ],
          ),
        ),
      ),
    );
  }
}