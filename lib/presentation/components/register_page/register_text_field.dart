import 'package:flutter/material.dart';
import 'package:ventrift/presentation/themes/colors.dart';

class RegisterTextfield extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController? textController;

  const RegisterTextfield({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.textController,
  });

  @override
  State<RegisterTextfield> createState() => _RegisterTextFieldState();
}

class _RegisterTextFieldState extends State<RegisterTextfield> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: TextField(
        controller: widget.textController,
        obscureText: widget.obscureText ? _isObscured : false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.grey, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide:
                const BorderSide(color: AppColors.ventrift_green, width: 2.0),
          ),
          hintText: widget.hintText,
          suffixIcon: widget.obscureText
              ? IconButton(
                  icon: Icon(
                    _isObscured ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
