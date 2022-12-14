// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  

  bool kontrol = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kodlama Teknikleri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(kontrol ?  "DOĞRU"  :  "YANLIŞ",
            style: TextStyle(
              color:  kontrol ? Colors.blue: Colors.red,
            ),
            
            
            ),
          RaisedButton(
            child: Text("Durum 1"),
            onPressed: (){
            setState(() {
              kontrol = true;
            });
            },
          ),
           RaisedButton(
            child: Text("Durum 2"),
            onPressed: (){
            setState(() {
              kontrol = false;
            });
            },
           ),
          ],
        ),
      ),
    );
  }
}
