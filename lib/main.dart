import 'package:flutter/material.dart';
import 'package:shinhan_intern_app/popup/kosdaq.dart';
import 'package:shinhan_intern_app/popup/kospi.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("신한알파"),
          ),
          body: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => const Kospi()));
                      },
                      child: const Text("코스피"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => const Kosdaq()));
                      },
                      child: const Text("코스닥"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            child: SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home_outlined),
                  Icon(Icons.show_chart),
                  Icon(Icons.menu),
                ],
              ),
            ),
          ),
        )
    );
  }
}
