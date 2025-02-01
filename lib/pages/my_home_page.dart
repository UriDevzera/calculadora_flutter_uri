import 'package:flutter/material.dart';
import 'package:primeira_aplicacao_flutter/widgets/acoes_calculadora.dart';
import 'package:primeira_aplicacao_flutter/widgets/input_widget.dart';
import 'package:primeira_aplicacao_flutter/widgets/resultado.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var valorOneController = TextEditingController();
  var valorTwoController = TextEditingController();
  var resultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InputWidget(controller: valorOneController, title: "Valor 1"),
            InputWidget(controller: valorTwoController, title: "Valor 2"),
            AcoesCalculadora(
              onPressedSoma: soma,
              onPressedSubtrai: subtrai,
              onPressedMultiplica: multiplica,
              onPressedDivide: divide,
            ),
            ExibeResultado(resultado: resultado),
          ],
        ),
      ),
    );
  }

  void soma() {
    var valor1 = double.tryParse(valorOneController.text) ?? 0;
    var valor2 = double.tryParse(valorTwoController.text) ?? 0;

    resultado = (valor1 + valor2).toString();
    setState(() {});
  }

  void subtrai() {
    var valor1 = double.tryParse(valorOneController.text) ?? 0;
    var valor2 = double.tryParse(valorTwoController.text) ?? 0;

    resultado = (valor1 - valor2).toString();
    setState(() {});
  }

  void multiplica() {
    var valor1 = double.tryParse(valorOneController.text) ?? 0;
    var valor2 = double.tryParse(valorTwoController.text) ?? 0;

    resultado = (valor1 * valor2).toString();
    setState(() {});
  }

  void divide() {
    var valor1 = double.tryParse(valorOneController.text) ?? 0;
    var valor2 = double.tryParse(valorTwoController.text) ?? 1;

    resultado = (valor1 / valor2).toStringAsFixed(2);
    setState(() {});
  }
}
