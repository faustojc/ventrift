import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ventrift/domain/routes/app_routes.dart';
import 'package:ventrift/presentation/blocs/form/form_cubit.dart';
import 'package:ventrift/presentation/components/register_page/register_dob_calendar.dart';
import 'package:ventrift/presentation/components/register_page/register_indexes.dart';

class RegisterPage extends StatefulWidget {
  final double textHeight;

  const RegisterPage({
    super.key,
    this.textHeight = 15,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FormCubit>(
      create: (context) => FormCubit(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pushReplacement(context, AppRoutes.loginPage),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Header Text
                  const RegisterHeading(),
                  const SizedBox(height: 30),

                  /// Username
                  const RegisterTextField(
                    label: 'username',
                    hintText: "Username",
                  ),
                  SizedBox(height: widget.textHeight),

                  /// Full Name
                  const RegisterTextField(
                    label: 'full_name',
                    hintText: "Full Name",
                  ),
                  SizedBox(height: widget.textHeight),

                  /// Email Address
                  const RegisterTextField(
                    label: 'email',
                    hintText: "Email Address",
                  ),
                  SizedBox(height: widget.textHeight),

                  /// Date Of Birth
                  const RegisterDatePicker(),
                  SizedBox(height: widget.textHeight),

                  /// Password
                  const RegisterTextField(
                    label: 'password',
                    hintText: "Password",
                    isPassword: true,
                  ),
                  SizedBox(height: widget.textHeight),

                  /// Retype Password
                  const RegisterTextField(
                    label: 'retype_password',
                    hintText: "Re-type Password",
                    isPassword: true,
                  ),

                  SizedBox(height: widget.textHeight),

                  /// Divider
                  Divider(color: Theme.of(context).colorScheme.outline, thickness: 1.15),
                  SizedBox(height: widget.textHeight + 5),

                  /// Privacy Policy
                  PrivacyPolicyText(
                    onPrivacyPolicyTap: () {
                      //TODO: ROUTE TO PRIVACY POLICY
                    },
                  ),
                  SizedBox(height: widget.textHeight + 10),

                  /// Continue Button
                  RegisterButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // TODO: register the user and create profile
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
