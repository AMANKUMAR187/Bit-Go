import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bit_go/constants/assets_images.dart';
import 'package:bit_go/screen/AuthScreen/Login.dart';
import 'package:bit_go/screen/SplaceScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  bool showsplase = true;
  Leadhome(){
    Future.delayed(Duration(seconds: 3),(){
      setState(() {
        showsplase = false;
      });
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Leadhome();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Bit-Go',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home:   LoginScreen() ,

    );
  }
}

