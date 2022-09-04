import 'package:flutter/material.dart';
import 'package:Traffic_Locale/details_enter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Traffic Locale',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Entries(),
    );
  }
}
