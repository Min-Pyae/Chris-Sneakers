import 'package:flutter/material.dart';
import 'package:sneaker_app/pages/home_page.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  const AppButton({super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black87,
        padding: const EdgeInsets.symmetric(
          horizontal: 40, 
          vertical: 30
        )
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold
        ),
      )
    );
  }
}
