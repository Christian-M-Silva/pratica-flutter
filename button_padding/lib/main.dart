import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Input(
                label: 'Nome',
              ),
              Input(
                label: 'Senha',
                isPassword: true,
              ),
              Button(),
            ],
          ),
        ),
      ),
    );
  }
}

class Input extends StatelessWidget {
  const Input({super.key, this.isPassword, required this.label});

  final bool? isPassword;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          obscureText: isPassword ?? false,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: label,
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class Button extends StatelessWidget {
  const Button({super.key});

  void printAction() {
    debugPrint('Login');
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: printAction,
      style: OutlinedButton.styleFrom(
        fixedSize: const Size(180, 45),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        backgroundColor: Colors.blue,
        padding: const EdgeInsets.all(12),
      ),
      child: const Text(
        'Login',
        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
      ),
    );
  }
}
