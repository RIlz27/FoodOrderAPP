import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressedAction;
  final TextStyle? textStyle; // Tambahkan parameter textStyle

  const ButtonPrimary({
    super.key,
    required this.buttonText,
    required this.onPressedAction,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressedAction,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 73, 54, 40),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          buttonText,
          style: textStyle, // Terapkan textStyle di sini
        ),
      ),
    );
  }
}
