import 'package:flutter/material.dart';

class Cliente extends StatelessWidget {
  const Cliente({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cliente")),
      body: const Center(
        child: Text("Página de Cliente ADS"),
      ),
    );
  }
}