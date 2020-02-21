import 'package:flutter/material.dart';
import 'package:producto_1/home.dart';

 void main(){
   runApp(Aplication());
 }
 
 class Aplication extends StatelessWidget{

   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
    );
  }
}