import 'package:aula2/telas/tela2.dart';
import 'package:aula2/telas/tela_inicial.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => TelaInicial()),
        GoRoute(path: '/tela2/:nome', builder:(context, state) {
          final nome = state.pathParameters['nome'];
          return Tela2(nome:nome);
        },)
    ]
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'navgacao com GO router',
    routerConfig: _router,
    );
      
    
  }
}
