import 'package:flutter/material.dart';
import 'package:shinhan_intern_app/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '신한 알파',
      theme: ThemeData(
        primaryColor: Colors.white,
        hintColor: Color(0xff0046ff),
      ),
      home: const Home(),
    );
  }
}
