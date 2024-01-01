import 'package:flutter/material.dart';

import 'input screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color.fromARGB(255, 9, 12, 34),
        scaffoldBackgroundColor: Color.fromARGB(255, 9, 12, 34),
      ),
      home: InputScreen() ,
    );
  }
}
