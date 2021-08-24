import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final IconData? icon;
  final TextEditingController? controller;
  final String? hint;
  InputField({this.icon, this.controller, this.hint});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: hint,
            prefixIcon: Icon(icon),
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 18)
      ],
    );
  }
}
