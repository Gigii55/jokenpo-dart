import 'package:flutter/material.dart';

class Jogada extends StatelessWidget {
  const Jogada ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 222, 215),
      appBar: AppBar(title: Text('PEDRA PAPEL OU TESOURA?',
      style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      ),),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 255, 64, 64)),
      body: Center(
        
        child: Column(
          children: [
            SizedBox(width: 10, height: 70),
            ElevatedButton(onPressed: () =>{}, child: Image.asset('images/papel.png', height: 150, width: 150,)),
            SizedBox(width: 30 ,height: 30,),
            ElevatedButton(onPressed: () =>{}, child: Image.asset('images/tesoura.png', height: 150, width: 150,)),
            SizedBox(width: 30, height: 30,),
            ElevatedButton(onPressed: () =>{}, child: Image.asset('images/pedra.png', height: 150, width: 150,))
            
          ],
        ),
      ),
    );

  }
}