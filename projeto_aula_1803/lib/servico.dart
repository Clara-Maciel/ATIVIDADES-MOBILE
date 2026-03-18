import 'package:flutter/material.dart';

class Servico extends StatelessWidget {
  const Servico({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Servico")),
      body: const Center(
        child: Text("Página de Serviço ADS"),
      ),
    );
  }
}