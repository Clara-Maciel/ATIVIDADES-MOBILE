import 'package:flutter/material.dart';

class CombustivelForm extends StatefulWidget {
  const CombustivelForm({super.key});

  @override
  State<CombustivelForm> createState() => _CombustivelFormState();
}

class _CombustivelFormState extends State<CombustivelForm> {
  final TextEditingController _gasolinaController = TextEditingController();
  final TextEditingController _etanolController = TextEditingController();
  String _resultado = '';

  void _calcular() {
    final double? gasolina =
        double.tryParse(_gasolinaController.text.replaceAll(',', '.'));
    final double? etanol =
        double.tryParse(_etanolController.text.replaceAll(',', '.'));

    if (gasolina == null || etanol == null || gasolina <= 0 || etanol <= 0) {
      setState(() => _resultado = 'Preencha os campos corretamente.');
      return;
    }

    final double relacao = etanol / gasolina;

    setState(() {
      if (relacao <= 0.70) {
        _resultado =
            'Use ETANOL! o etanol está custando apenas ${(relacao * 100).toStringAsFixed(1)}% do preço da gasolina, compensa';
      } else {
        _resultado =
            'Use GASOLINA! o etanol está custando ${(relacao * 100).toStringAsFixed(1)}% do preço da gasolina, slk não compensa';
      }
    });
  }

  @override
  void dispose() {
    _gasolinaController.dispose();
    _etanolController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Calculadora Flex',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: _gasolinaController,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Preço Gasolina (R\$)',
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: _etanolController,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Preço Etanol (R\$)',
          ),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: _calcular,
          child: const Text('Calcular'),
        ),
        const SizedBox(height: 8),
        Text(_resultado),
      ],
    );
  }
}

class CheckboxSection extends StatefulWidget {
  const CheckboxSection({super.key});

  @override
  State<CheckboxSection> createState() => _CheckboxSectionState();
}

class _CheckboxSectionState extends State<CheckboxSection> {
  bool _checkbox1 = false;
  bool _checkbox2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Checkbox',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        CheckboxListTile(
          title: const Text('Aceito os termos de uso'),
          value: _checkbox1,
          onChanged: (bool? valor) {
            setState(() => _checkbox1 = valor!);
          },
        ),
        CheckboxListTile(
          title: const Text('Receber notificações'),
          value: _checkbox2,
          onChanged: (bool? valor) {
            setState(() => _checkbox2 = valor!);
          },
        ),
      ],
    );
  }
}

class SwitchSection extends StatefulWidget {
  const SwitchSection({super.key});

  @override
  State<SwitchSection> createState() => _SwitchSectionState();
}

class _SwitchSectionState extends State<SwitchSection> {
  bool _switch1 = false;
  bool _switch2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Switch',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SwitchListTile(
          title: const Text('Modo escuro'),
          value: _switch1,
          onChanged: (bool valor) {
            setState(() => _switch1 = valor);
          },
        ),
        SwitchListTile(
          title: const Text('Localização'),
          value: _switch2,
          onChanged: (bool valor) {
            setState(() => _switch2 = valor);
          },
        ),
      ],
    );
  }
}

class RadioSection extends StatefulWidget {
  const RadioSection({super.key});

  @override
  State<RadioSection> createState() => _RadioSectionState();
}

class _RadioSectionState extends State<RadioSection> {
  String _opcao = 'opcao1';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Radio',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        RadioGroup<String>(
          groupValue: _opcao,
          onChanged: (String? valor) {
            setState(() => _opcao = valor!);
          },
          child: Column(
            children: const [
              RadioListTile<String>(
                title: Text('Opção 1'),
                value: 'opcao1',
              ),
              RadioListTile<String>(
                title: Text('Opção 2'),
                value: 'opcao2',
              ),
              RadioListTile<String>(
                title: Text('Opção 3'),
                value: 'opcao3',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SliderSection extends StatefulWidget {
  const SliderSection({super.key});

  @override
  State<SliderSection> createState() => _SliderSectionState();
}

class _SliderSectionState extends State<SliderSection> {
  double _slider = 0.5;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Slider',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Slider(
          value: _slider,
          onChanged: (double valor) {
            setState(() => _slider = valor);
          },
        ),
        Text('Valor: ${(_slider * 100).toStringAsFixed(0)}%'),
      ],
    );
  }
}