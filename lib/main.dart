import 'package:flutter/material.dart';
import 'DicePage.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('DICE'),
          backgroundColor: Colors.red,
          elevation: 20.0,
        ),
        body: DicePage(),
      ),
    );
  }
}
