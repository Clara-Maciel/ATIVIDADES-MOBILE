import 'package:flutter/material.dart';
import 'widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Atividade 05',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Atividade 05')),
        body: const SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CombustivelForm(),
              Divider(height: 32),
              CheckboxSection(),
              Divider(height: 32),
              SwitchSection(),
              Divider(height: 32),
              RadioSection(),
              Divider(height: 32),
              SliderSection(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}