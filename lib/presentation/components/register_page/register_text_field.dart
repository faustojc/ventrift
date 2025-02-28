import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ventrift/presentation/blocs/form/form_cubit.dart';
import 'package:ventrift/presentation/themes/colors.dart';

class RegisterTextField extends StatefulWidget {
  final String hintText;
  final String label;
  final bool isPassword;

  const RegisterTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  State<RegisterTextField> createState() => _RegisterTextFieldState();
}

class _RegisterTextFieldState extends State<RegisterTextField> {
  late bool isObscure;

  @override
  void initState() {
    super.initState();
    isObscure = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<FormCubit, Map<String, dynamic>>(
      buildWhen: (prev, curr) => prev[widget.label] != curr[widget.label],
      builder: (context, state) => TextFormField(
            initialValue: (state[widget.label] != null) ? state[widget.label].toString() : null,
            obscureText: isObscure,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: (widget.label != 'email') ? TextInputType.text : TextInputType.emailAddress,
            onChanged: (value) => BlocProvider.of<FormCubit>(context).updateField(widget.label, value.trim()),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "${widget.hintText.toLowerCase()} is required";
              } else if (widget.label == 'email') {
                final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

                if (!emailRegex.hasMatch(value)) {
                  return "Please enter a valid email address";
                }
              } else if (widget.isPassword) {
                final passwordRegex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^a-zA-Z\d]).{4,}$');

                if (widget.label == 'password' && value.length < 8) {
                  return "Password must be at least 8 characters";
                } else if (widget.label == 'password' && !passwordRegex.hasMatch(value)) {
                  return "Password must contain at least:\n • 1 uppercase\n • 1 lowercase\n • 1 symbol\n • 1 number";
                } else if (widget.label == 'retype_password' && value != state['password']) {
                  return "Passwords do not match";
                }
              }

              return null;
            },
            decoration: InputDecoration(
              errorMaxLines: 6,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: AppColors.ventriftGreen, width: 2.0),
              ),
              hintText: widget.hintText,
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(
                        isObscure ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                      ),
                      onPressed: () => setState(() => isObscure = !isObscure),
                    )
                  : null,
            ),
          ));
}
