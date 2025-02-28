import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '/presentation/themes/colors.dart';

class PrivacyPolicyText extends StatelessWidget {
  final VoidCallback? onPrivacyPolicyTap;

  const PrivacyPolicyText({super.key, this.onPrivacyPolicyTap});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "By continuing, I accept Ventrift's ",
        style: const TextStyle(fontSize: 14, color: Colors.white),
        children: <TextSpan>[
          TextSpan(
            text: "Privacy Policy",
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.ventriftGreen,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = onPrivacyPolicyTap ??
                  () {
                    print("Debug Privacy Policy Click");
                  },
          ),
        ],
      ),
    );
  }
}

class RegisterHeading extends StatelessWidget {
  const RegisterHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Text("Let's get you in!",
          style: TextStyle(
            fontSize: 37,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
