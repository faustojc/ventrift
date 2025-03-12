import 'package:flutter/material.dart';

import '/presentation/themes/colors.dart';

class ForgetPassButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const ForgetPassButton(
      {super.key, required this.onPressed, this.buttonText = ""});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.ventriftGreen,
          foregroundColor: Colors.white,
        ),
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
