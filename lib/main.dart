// ignore_for_file: unused_field, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:mintus/utilities/navbar.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override 
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

// ignore: duplicate_ignore
class _MyAppState extends State<MyApp> {
  


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
         splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
        primarySwatch: Colors.blue,
       
      ),
      
      home:  const HomePage()
        );
        
    
  }
}




