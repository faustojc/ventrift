import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ventrift/presentation/themes/colors.dart';

/// Normal Field
class ForgetPassTextField extends StatefulWidget {
  final String hintText;

  const ForgetPassTextField({
    super.key,
    required this.hintText,
  });

  @override
  State<ForgetPassTextField> createState() => _ForgetPassTextFieldState();
}

class _ForgetPassTextFieldState extends State<ForgetPassTextField> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextFormField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            errorMaxLines: 6,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide:
                  const BorderSide(color: AppColors.ventriftGreen, width: 2.0),
            ),
            hintText: widget.hintText,
          ),
        ),
      ],
    );
  }
}

/// OTP Field
class OTPField extends StatefulWidget {
  final String hintText;

  const OTPField({
    super.key,
    required this.hintText,
  });

  @override
  State<OTPField> createState() => _OTPFieldState();
}

class _OTPFieldState extends State<OTPField> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextFormField(
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(6),
          ],
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            errorMaxLines: 6,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide:
                  const BorderSide(color: AppColors.ventriftGreen, width: 2.0),
            ),
            hintText: widget.hintText,
          ),
        ),
      ],
    );
  }
}
