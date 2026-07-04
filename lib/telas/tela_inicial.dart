import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context){
    final numController =TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('tela 1'),
      centerTitle: true,
      backgroundColor: Colors.deepOrangeAccent),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: numController,
              decoration: InputDecoration(
                hintText: 'nome',
              ),
            ),
            ElevatedButton(onPressed: (){
              String nome = numController.text;
              context.go('seguinte/${nome}');
            }, child: Text('enviar')),
          ],
        ),
      ),
      

    );
  }
}