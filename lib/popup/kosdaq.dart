import 'package:flutter/material.dart';

class Kosdaq extends StatelessWidget {
  const Kosdaq({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.keyboard_arrow_left)),
        ),
        body: Text('내용'),
      ),
    );
  }
}