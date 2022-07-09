import 'package:flutter/material.dart';
import 'package:library_ui/Displaypage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Displaypage(),debugShowCheckedModeBanner: false,
    );
  }
}


