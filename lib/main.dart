import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

buttonPressed() {}

Widget buildButton(String buttonText) {
  return Expanded(
      child: SizedBox(
    height: 70.0,
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: OutlinedButton(
          onPressed: (() => buttonPressed()),
          child: Text(
            buttonText,
            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          )),
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
         const SizedBox(height: 24.0,),
          Container(
            alignment: Alignment.centerRight,
            padding:
                const EdgeInsets.symmetric(vertical: 44.0, horizontal: 20.0),
            child: const Text(
              '0',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48.0),
            ),
          ),
          const Expanded(child: Divider()),

          Column(
            children: [
              Row(
                children: [
                  buildButton('7'),
                  buildButton('8'),
                  buildButton('9'),
                  buildButton('/'),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
