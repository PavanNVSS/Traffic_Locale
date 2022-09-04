import 'package:Traffic_Locale/NavBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const InComp());
}

class InComp extends StatelessWidget {
  const InComp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '404 Page',
      home: Scaffold(
        drawer: NavBar(),
      appBar: AppBar(
        title: const Text('ERROR 404 NOT FOUND'),
      ),
        
        body: const Center(
          child: Text('Under Development, Sorry for inconvenience'),
        ),
      ),
    );
  }
}