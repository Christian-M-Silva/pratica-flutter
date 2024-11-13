import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int steps = 0;
  Color background = Colors.white;
  Color colorText = Colors.red;


  void resetColor() {
    background = Colors.white;
    colorText = Colors.red;
  }

  void incremment() {
    setState(() {
      steps++;
      if (steps < 5) {
        resetColor();
      } else if (steps < 10) {
        background = Colors.blue;
        colorText = Colors.orange;
      } else if (steps < 15) {
        background = Colors.orange;
        colorText = Colors.yellow;
      } else if (steps < 20) {
        background = Colors.cyan;
        colorText = Colors.pink;
      } else if (steps == 25) {
        background = Colors.green;
        colorText = Colors.black;
        // Exibir a mensagem de parabéns
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Parabéns!'),
              content: Text('Você atingiu a meta de 10.000 passos!'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      } else {
        steps = 0;
        resetColor();
      }
    });
  }

  void reset() {
    setState(() {
      steps = 0;
      resetColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contador de passos',
          style: TextStyle(fontSize: 28),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$steps',
              style: TextStyle(fontSize: 20, color: colorText),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: incremment, child: Text('Incrementar')),
                OutlinedButton(onPressed: reset, child: Text('Redefinir'))
              ],
            )
          ],
        ),
      ),
    );
  }
}