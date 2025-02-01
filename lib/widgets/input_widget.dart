import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  const InputWidget({super.key, required this.title, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: Text(title),
        ),
      ),
    );
  }
}
