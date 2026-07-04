import 'package:go_router/go_router.dart';

import 'package:flutter/material.dart';

class Jogada extends StatelessWidget {
  const Jogada({super.key});

  @override
  Widget build(BuildContext context) {
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
          children: [
            SizedBox(width: 10, height: 100),
            ElevatedButton(
              onPressed: () {
                context.go('/resultado/pedra');
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                elevation: 0,
              ),
              child: Image.asset('images/pata3.png', height: 180, width: 150),
            ),

            SizedBox(width: 30, height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                elevation: 0,
              ),
              onPressed: () {
                context.go('/resultado/papel');
              },
              child: Image.asset('images/pata.png', height: 200, width: 200),
            ),
            SizedBox(width: 30, height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                elevation: 0,
              ),
              onPressed: () {
                context.go('/resultado/tesoura');
              },
              child: Image.asset('images/pata2.png', height: 200, width: 150),
            ),
          ],
        ),
      ),
    );
  }
}
