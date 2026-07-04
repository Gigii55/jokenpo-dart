import 'package:flutter/material.dart';
import 'dart:math';
import 'package:go_router/go_router.dart';

class Resultado extends StatelessWidget {
  final String? jogada;
  const Resultado({super.key, this.jogada});

  final Map<String, String> imagens = const {
    'pedra': 'images/pata3.png',
    'papel': 'images/pata.png',
    'tesoura': 'images/pata2.png',
  };

  String sortearJogadaMaquina() {
    List<String> vet = ['pedra', 'papel', 'tesoura'];
    Random random = Random();
    int sorteio = random.nextInt(3);
    return vet[sorteio];
  }

  String validarJogada(String jogadaJogador, String jogadaMaquina) {
    if (jogadaJogador == jogadaMaquina) {
      return 'EMPATOU!';
    }
    if ((jogadaJogador == 'pedra' && jogadaMaquina == 'tesoura') ||
        (jogadaJogador == 'papel' && jogadaMaquina == 'pedra') ||
        (jogadaJogador == 'tesoura' && jogadaMaquina == 'papel')) {
      return 'VOCÊ GANHOU!!!!';
    }
    return 'VOCÊ PERDEU!!!';
  }

  @override
  Widget build(BuildContext context) {
    String jogadaMaquina = sortearJogadaMaquina();
    String resultado = validarJogada(jogada ?? '', jogadaMaquina);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 166, 190, 205),
      appBar: AppBar(
        title: Text(
          'PEDRA PAPEL OU TESOURA?',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 86, 86, 86),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Você',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Image.asset(imagens[jogada]!, height: 150, width: 150),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Máquina',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Image.asset(
                      imagens[jogadaMaquina]!,
                      height: 150,
                      width: 150,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              resultado,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 86, 86, 86),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: Text(
                'Jogar novamente',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
