import 'package:flutter/material.dart';
import 'package:tryg_poc_component1/tryg_poc_component1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void doSomething(String s) {
    print("Printer: ${s}");
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tryg component 1"),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TrygComponent1(
              name: 'Mehmet',
              callback: (v) {
                print('Callback med info ${v}');
              },
            ),
          ),
        ),
      ),
    );
  }
}