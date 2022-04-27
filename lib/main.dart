import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.purple,
            accentColor: Colors.orange,
            textTheme: const TextTheme(
                bodyText2:
                    TextStyle(fontSize: 24, fontStyle: FontStyle.italic))),
        home: Scaffold(
          appBar: AppBar(title: const Text('Building Layouts with Flutter')),
          body: const Center(
            child: Text('Hello Flutter Layouts'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (() => print('You rang?')),
            child: const Icon(Icons.lightbulb_outline),
          ),
          persistentFooterButtons: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.add_comment)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add_alarm)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add_location))
          ],
        ));
  }
}
