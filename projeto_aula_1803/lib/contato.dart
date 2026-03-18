import 'package:flutter/material.dart';


class Contato extends StatelessWidget {
  const Contato({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contato")),
      body: const Center(
        child: Text("Página de Contato ADS"),
      ),
    );
  }
}