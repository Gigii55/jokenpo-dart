import 'package:aula2/telas/jogada.dart';
import 'package:aula2/telas/resultado.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => Jogada()),
      GoRoute(
        path: '/resultado/:jogada',
        builder: (context, state) {
          final jogada = state.pathParameters['jogada'];
          return Resultado(jogada: jogada);
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }
}
