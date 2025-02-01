import 'package:flutter/material.dart';

class ExibeResultado extends StatelessWidget {
  final String resultado;
  const ExibeResultado({super.key, required this.resultado});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Resultado: "),
        Text(resultado),
      ],
    );
  }
}
