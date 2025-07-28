import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var textTopla = 0;
  String textTopla1="";
  List <String> toplama=[];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hesap Makinesi"),
        backgroundColor: Colors.deepOrange,
        ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Colors.red,
                  hintText: textTopla1,
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 80,height: 40,
                  child: 
                  ElevatedButton(onPressed: (){
                    setState(() {
                      textTopla1="";

                    });
                  
                  },
                   child: 
                   const Text("AC",style: TextStyle(color: Colors.white),),
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                   ),
                   ),
                ),
                SizedBox(width: 80,height: 40,
                  child: 
                  ElevatedButton(onPressed: (){
                    setState(() {
                      
                    });
                  
                  },
                   child: 
                   const Text("OFF",style: TextStyle(color: Colors.white),),
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                   ),
                   ),
                ),
                SizedBox(width: 80,height: 40,
                  child: 
                  ElevatedButton(onPressed: (){
                    setState(() {
                      textTopla1+="+";
                    });
                  
                  },
                   child: 
                   const Text("+",style: TextStyle(color: Colors.white),),
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                   ),
                   ),
                ),
                SizedBox(width: 80,height: 40,
                  child: 
                  ElevatedButton(onPressed: (){
                    setState(() {
                      toplama.addAll(textTopla1.split('+'));
                      print(toplama);
                      var a = toplama.fold<int>(0,(prev, element)=>prev + int.parse(element.trim()),);
                      textTopla1=a.toString();
                      toplama.clear();
                    });
                  
                  },
                   child: 
                   const Text("=",style: TextStyle(color: Colors.white),),
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                   ),
                   ),
                ),
                
            
                
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 100,height: 80,
                    child: 
                    ElevatedButton(onPressed: (){
                      setState(() {
                        textTopla1+="9";
                      });
                    
                    },
                     child: 
                     const Text("9",style: TextStyle(color: Colors.white),),
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                     ),
                     ),
                  ),
                  SizedBox(width: 100,height: 80,
                    child: 
                    ElevatedButton(onPressed: (){
                      setState(() {
                        textTopla1+="8";
                      });
                    
                    },
                     child: 
                     const Text("8",style: TextStyle(color: Colors.white),),
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                     ),
                     ),
                  ),
                  SizedBox(width: 100,height: 80,
                    child: 
                    ElevatedButton(onPressed: (){
                      setState(() {
                        textTopla1+="7";
                      });
                    
                    },
                     child: 
                     const Text("7",style: TextStyle(color: Colors.white),),
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                     ),
                     ),
                  ),
                  
                  
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 100,height: 80,
                    child: 
                    ElevatedButton(onPressed: (){
                      setState(() {
                        textTopla1+="6";
                      });
                    
                    },
                     child: 
                     const Text("6",style: TextStyle(color: Colors.white),),
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                     ),
                     ),
                  ),
                  SizedBox(width: 100,height: 80,
                    child: 
                    ElevatedButton(onPressed: (){
                      setState(() {
                        textTopla1+="5";
                      });
                    
                    },
                     child: 
                     const Text("5",style: TextStyle(color: Colors.white),),
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                     ),
                     ),
                  ),
                  SizedBox(width: 100,height: 80,
                    child: 
                    ElevatedButton(onPressed: (){
                      setState(() {
                        textTopla1+="4";
                      });
                    
                    },
                     child: 
                     const Text("4",style: TextStyle(color: Colors.white),),
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                     ),
                     ),
                  ),
                  
                  
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 100,height: 80,
                    child: 
                    ElevatedButton(onPressed: (){
                      setState(() {
                        textTopla1+="3";
                      });
                    
                    },
                     child: 
                     const Text("3",style: TextStyle(color: Colors.white),),
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                     ),
                     ),
                  ),
                  SizedBox(width: 100,height: 80,
                    child: 
                    ElevatedButton(onPressed: (){
                      setState(() {
                        textTopla1+="2";
                      });
                    
                    },
                     child: 
                     const Text("2",style: TextStyle(color: Colors.white),),
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                     ),
                     ),
                  ),
                  SizedBox(width: 100,height: 80,
                    child: 
                    ElevatedButton(onPressed: (){
                      setState(() {
                        textTopla1+="1";
                      });
                    
                    },
                     child: 
                     const Text("1",style: TextStyle(color: Colors.white),),
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                     ),
                     ),
                  ),
                  
                  
                ],
              ),
            ),
            SizedBox(width: 100,height: 80,
                    child: 
                    ElevatedButton(onPressed: (){
                      setState(() {
                        textTopla1+="0";
                      });
                    
                    },
                     child: 
                     const Text("0",style: TextStyle(color: Colors.white),),
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                     ),
                     ),
                  ),



          ],
        ),
        


      ),



    );
  }
}