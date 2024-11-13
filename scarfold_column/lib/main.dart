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
      appBar: AppBar(
        title: const Text(
          'Notas Pessoais',
          style: TextStyle(fontSize: 35),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: NotesList(),
      ),
    );
  }
}

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: const [
          Notes(
            title: 'Tarefa 1',
            cor: Colors.purple,
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
          ),
          Notes(
            title: 'Tarefa 2',
            cor: Colors.green,
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
          ),
          Notes(
            title: 'Tarefa 3',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
          ),
          Notes(
            title: 'Tarefa 3',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
          ),
          Notes(
            title: 'Tarefa 3',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
          ),
          Notes(
            title: 'Tarefa 3',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
          ),
          Notes(
            title: 'Tarefa 3',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
          ),
        ],
      ),
    );
  }
}

class Notes extends StatelessWidget {
  const Notes(
      {required this.title, required this.description, this.cor, super.key});

  final String title;
  final Color? cor;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cor ?? Colors.blue,
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
