import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ventrift/domain/routes/app_routes.dart';
import 'package:ventrift/presentation/blocs/form/form_cubit.dart';
import 'package:ventrift/presentation/components/forgetPass_page/forgetPass_indexes.dart';
import 'package:ventrift/presentation/components/forgetPass_page/newPass_field.dart';

class NewPasswordPage extends StatefulWidget {
  final double textHeight;

  const NewPasswordPage({
    super.key,
    this.textHeight = 15,
  });

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  final ForgetPassHeadingReference headingText =
      ForgetPassHeadingReference('Forgot your\n'
          'password?');

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FormCubit>(
      create: (context) => FormCubit(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () =>
                Navigator.pushReplacement(context, AppRoutes.loginPage),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Header Text
                ForgetPassHeading(headingText: headingText),
                SizedBox(height: widget.textHeight + 10),

                /// Password
                const NewPassField(
                  label: 'password',
                  hintText: "Password",
                  isPassword: true,
                ),
                SizedBox(height: widget.textHeight + 20),

                /// Retype Password
                const NewPassField(
                  label: 'retype_password',
                  hintText: "Re-type Password",
                  isPassword: true,
                ),

                SizedBox(height: widget.textHeight + 25),

                /// Divider
                Divider(
                    color: Theme.of(context).colorScheme.outline,
                    thickness: 1.15),
                SizedBox(height: widget.textHeight - 5),

                /// Save Changes
                ForgetPassButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // TODO: save if password matches
                    }
                  },
                  buttonText: "Save Changes",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
