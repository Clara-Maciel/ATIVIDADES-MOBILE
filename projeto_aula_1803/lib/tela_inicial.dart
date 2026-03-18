import 'package:flutter/material.dart';
import 'empresa.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  void _abrirEmpresa() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const EmpresaPage(nome: "Empresa ADS"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(Icons.keyboard_alt_outlined, size: 40),
            SizedBox(width: 8.0),
            Text(
              "App ADS",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: _abrirEmpresa,
                  child: Image.asset('images/menu_empresa.png', width: 100),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, "/servico"),
                  child: Image.asset('images/menu_servico.png', width: 100),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, "/cliente"),
                  child: Image.asset('images/menu_cliente.png', width: 100),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, "/contato"),
                  child: Image.asset('images/menu_contato.png', width: 100),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}