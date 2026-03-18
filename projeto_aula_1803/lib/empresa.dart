import 'package:flutter/material.dart';

class EmpresaPage extends StatelessWidget {
  final String? nome;
  const EmpresaPage({super.key, this.nome});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Empresa")),
      body: const Center(
        child: Text("Página de Empresa ADS"),
      ),
    );
  }
}