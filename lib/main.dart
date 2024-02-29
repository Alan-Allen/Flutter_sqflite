import 'package:flutter/material.dart';
import 'package:flutter_sqlite1/database/DBHelper.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SQLite Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter SQLite Demo'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
            },
            child: const Text('Insert Data'),
          ),
        ),
      ),
    );
  }
}
