import 'package:flutter/material.dart';
import 'tela_inicial.dart';
import 'empresa.dart';
import 'servico.dart';
import 'cliente.dart';
import 'contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App ADS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      home: const TelaInicial(),
      routes: {
        "/servico": (context) => const Servico(),
        "/cliente": (context) => const Cliente(),
        "/contato": (context) => const Contato(),
      },
    );
  }
}