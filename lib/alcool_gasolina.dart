import 'package:flutter/material.dart';

class AlcooGasolina extends StatefulWidget {
  const AlcooGasolina({super.key});

  @override
  State<AlcooGasolina> createState() => _AlcooGasolinaState();
}

class _AlcooGasolinaState extends State<AlcooGasolina> {
  final _controllerAlcool = TextEditingController();
  final _controllerGasolina = TextEditingController();
  String _resultado = '';

  void _calcular() {
    double? precoAlcool = double.tryParse(_controllerAlcool.text);
    double? precoGasolina = double.tryParse(_controllerGasolina.text);
    if (precoAlcool == null || precoGasolina == null) {
      setState(() {
        _resultado =
            'Valor incorreto informado para os preços incorreto utilize "." no lugar de ","';
      });
    } else {
      double media = precoAlcool / precoGasolina;
      if (media >= 0.7) {
        setState(() {
          _resultado = 'Melhor Abastecer com Gasolina';
        });
      } else {
        setState(() {
          _resultado = 'Melhor Abastecer com Álcool';
        });
      }
    }
    _limparCampos();
  }

  void _limparCampos() {
    _controllerAlcool.text = "";
    _controllerGasolina.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Álcool ou Gasolina'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('images/logo.png'),
              const Padding(
                padding: EdgeInsets.only(top: 35, bottom: 10),
                child: Text(
                  "Saiba qual a melhor opção para o abastecimento do seu carro.",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: "Preço Álcoll, Ex: 1.99"),
                style: const TextStyle(fontSize: 22),
                controller: _controllerAlcool,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: "Preço Gasolina, Ex: 3.99"),
                style: const TextStyle(fontSize: 22),
                controller: _controllerGasolina,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ElevatedButton(
                    onPressed: _calcular,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                    ),
                    child: const Text(
                      'Calcular',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    _resultado,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
