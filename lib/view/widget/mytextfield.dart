import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  // ignore: non_constant_identifier_names
  final IconData icon;
  final bool obscureText;

  const MyTextField(
      // ignore: non_constant_identifier_names
      {super.key,
      required this.controller,
      required this.hintText,
      required this.icon,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: const Color.fromARGB(255, 217, 217, 217),
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20)),
      ),
      obscureText: obscureText,
    );
  }
}
