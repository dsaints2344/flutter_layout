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
            child: FlutterLogo(),
            decoration: BoxDecoration(
                color: Colors.orange,
                gradient: LinearGradient(
                    colors: [Colors.pink.shade50, Colors.pink.shade500]),
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(Radius.circular(10.0))),
          ),
        ));
  }
}
