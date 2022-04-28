import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Container app',
        home: Scaffold(
          appBar: AppBar(title: const Text('Container')),
          body: Container(
            margin: const EdgeInsets.all(100.0),
            height: 100.0,
            width: 100.0,
            decoration: const BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
          ),
        ));
  }
}
