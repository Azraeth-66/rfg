import 'package:flutter/material.dart';
import 'package:rfg/src/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Floof Generation',
      home: HomePage(),
    );
  }
}
