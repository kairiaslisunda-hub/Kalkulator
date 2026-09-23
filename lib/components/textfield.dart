import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextfield extends StatelessWidget {
  final String Myhint;
  final TextEditingController txtController;
  final double radius;
  final bool isNumber;

  const MyTextfield({
    super.key,
    required this.Myhint,
    required this.txtController,
    required this.radius,
    this.isNumber = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      inputFormatters: isNumber
          ? [FilteringTextInputFormatter.digitsOnly]
          : null,
      decoration: InputDecoration(
        hintText: Myhint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}