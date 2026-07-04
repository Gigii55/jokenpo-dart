import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget{

  final String? nome;
  const Tela2({super.key, this.nome});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('tela 1'),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 191, 64, 255)),
    );
  }
}