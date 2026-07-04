import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 222, 215),
      appBar: AppBar(title: Text('Home',
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
            Text('BEM VINDO!!!'),
            SizedBox(width: 10, height: 70),
            ElevatedButton(onPressed: (){context.go('seguinte/');},
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            ),
            child: Text('JOGAR'), ),
          ],
        ),
      ),
    );

  }
}