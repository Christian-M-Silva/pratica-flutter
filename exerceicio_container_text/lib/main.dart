import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 50,
          color: Colors.green,
          child: const Text(
            'Primeiro',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: 100,
          height: 50,
          color: Colors.yellow,
          child: const Text(
            'Segundo',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: 100,
          height: 50,
          color: Colors.purple,
          child: const Text(
            'Terceiro',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
