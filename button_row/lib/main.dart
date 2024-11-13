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
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: const Text('Tema'),
        backgroundColor: Colors.purple,
      ),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(
              action: "Light Mode",
              label: "Light Mode",
              icon: Icon(Icons.light_mode),
            ),
            Button(
              action: "Dark Mode",
              label: "Dark Mode",
              icon: Icon(Icons.dark_mode),
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button(
      {super.key,
        required this.action,
        required this.label,
        required this.icon});

  final String action;
  final String label;
  final Icon icon;

  void printAction() {
    print(action);
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: printAction,
      label: Text(label),
      icon: icon,
    );
  }
}
