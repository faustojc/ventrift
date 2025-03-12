import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ventrift/domain/routes/app_routes.dart';
import 'package:ventrift/presentation/blocs/form/form_cubit.dart';
import 'package:ventrift/presentation/components/forgetPass_page/forgetPass_indexes.dart';

class ForgetPassPage extends StatefulWidget {
  final double textHeight;

  const ForgetPassPage({
    super.key,
    this.textHeight = 15,
  });

  @override
  State<ForgetPassPage> createState() => _ForgetPassPageState();
}

class _ForgetPassPageState extends State<ForgetPassPage> {
  final ForgetPassHeadingReference headingText =
      ForgetPassHeadingReference('Forgot your\n'
          'password?');

  final ForgetPassTextReference normalText =
      ForgetPassTextReference('Enter your email to request for a\n'
          'password reset');

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
                SizedBox(height: widget.textHeight),

                /// Text #2
                ForgetPassText(normalText: normalText),
                SizedBox(height: widget.textHeight + 15),

                /// Textfield
                const ForgetPassTextField(hintText: "Enter email"),
                SizedBox(height: widget.textHeight + 20),

                /// Divider
                Divider(
                    color: Theme.of(context).colorScheme.outline,
                    thickness: 1.15),
                SizedBox(height: widget.textHeight - 5),

                /// Request Password Reset Button
                ForgetPassButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // TODO: send email if email is valid
                    }
                  },
                  buttonText: "Request password reset",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
