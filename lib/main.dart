import 'package:flutter/material.dart';
import 'InputPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myBMI',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0e21),
        scaffoldBackgroundColor: Color(0xff0a0e21),

      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('myBMI')),
        ),
        body:SafeArea(child: InputPage()),

      ),
    );
  }
}
// This Main.dart is only for theme so wewill keep it empty