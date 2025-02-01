import 'package:flutter/material.dart';

class AcoesCalculadora extends StatelessWidget {
  final void Function() onPressedSoma;
  final void Function() onPressedSubtrai;
  final void Function() onPressedMultiplica;
  final void Function() onPressedDivide;
  const AcoesCalculadora({
    super.key,
    required this.onPressedSoma,
    required this.onPressedSubtrai,
    required this.onPressedMultiplica,
    required this.onPressedDivide,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: onPressedSoma, icon: Icon(Icons.add)),
        IconButton(onPressed: onPressedSubtrai, icon: Icon(Icons.remove)),
        IconButton(onPressed: onPressedMultiplica, icon: Icon(Icons.close)),
        IconButton(onPressed: onPressedDivide, icon: Icon(Icons.percent))
      ],
    );
  }
}
