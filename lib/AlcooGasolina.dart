import 'package:flutter/material.dart';

class AlcooGasolina extends StatefulWidget {
  const AlcooGasolina({Key? key}) : super(key: key);

  @override
  _AlcooGasolinaState createState() => _AlcooGasolinaState();
}

class _AlcooGasolinaState extends State<AlcooGasolina> {
  TextEditingController _controllerAlcool = new TextEditingController();
  TextEditingController _controllerGasolina = new TextEditingController();
  var _resultado = 'asdfasdfsad';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Álcool ou Gasolina'),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('images/logo.png'),
              Padding(
                padding: EdgeInsets.only(top: 35, bottom: 10),
                child: Text(
                  "Saiba qual a melhor opção para o abastecimento do seu carro.",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: "Preço Álcoll, Ex: 1.99"),
                style: TextStyle(fontSize: 22),
                controller: _controllerAlcool,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: "Preço Gasolina, Ex: 3.99"),
                style: TextStyle(fontSize: 22),
                controller: _controllerGasolina,
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(16),
                    ),
                    child: Text(
                      'Calcular',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    _resultado,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
