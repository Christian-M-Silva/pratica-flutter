import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController cellPhoneController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  var maskCellPhone = new MaskTextInputFormatter(
      mask: '+## (##) #####-####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  void printCadastro() {
    debugPrint(
        'O Usuario ${nameController.text}, com e-mail ${emailController.text} e número de telefone ${cellPhoneController.text} foi cadastrado');
    nameController.clear();
    cellPhoneController.clear();
    emailController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Cadastro',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Nome completo'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Email'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: TextField(
                  controller: cellPhoneController,
                  inputFormatters: [maskCellPhone],
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Telefone'),
                ),
              ),
              ElevatedButton(onPressed: printCadastro, child: Text('Cadastrar'))
            ],
          ),
        ),
      ),
    );
  }
}
