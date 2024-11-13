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
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/camera.jpg'),
            fit: BoxFit.cover,
            opacity: 0.7,
          ),
        ),
        child: ListView(
          children: const [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ItemGaleria(
                      path: 'assets/images/receita.jpg',
                    ),
                    ItemGaleria(
                      path: 'assets/images/3.jpg',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ItemGaleria(
                      path: 'assets/images/4.jpg',
                    ),
                    ItemGaleria(
                      path: 'assets/images/tabela-com-um-computador.jpg',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ItemGaleria(
                      path: 'assets/images/receita.jpg',
                    ),
                    ItemGaleria(
                      path: 'assets/images/3.jpg',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ItemGaleria(
                      path: 'assets/images/4.jpg',
                    ),
                    ItemGaleria(
                      path: 'assets/images/tabela-com-um-computador.jpg',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ItemGaleria(
                      path: 'assets/images/receita.jpg',
                    ),
                    ItemGaleria(
                      path: 'assets/images/3.jpg',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ItemGaleria(
                      path: 'assets/images/4.jpg',
                    ),
                    ItemGaleria(
                      path: 'assets/images/tabela-com-um-computador.jpg',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ItemGaleria(
                      path: 'assets/images/receita.jpg',
                    ),
                    ItemGaleria(
                      path: 'assets/images/3.jpg',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ItemGaleria(
                      path: 'assets/images/4.jpg',
                    ),
                    ItemGaleria(
                      path: 'assets/images/tabela-com-um-computador.jpg',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ItemGaleria extends StatelessWidget {
  const ItemGaleria({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), // Borda arredondada
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15), // Borda arredondada
        child: Image.asset(
          path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
