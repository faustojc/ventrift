import 'package:flutter/material.dart';
import '/components/RegisterPage/register_indexes.dart';

class RegisterPage extends StatelessWidget {
  final double textHeight;

  const RegisterPage({
    super.key,
    this.textHeight = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              /// Header Text
              const RegisterHeading(),
              SizedBox(height: textHeight),

              /// Username
              const RegisterTextfield(hintText: "Username"),
              SizedBox(height: textHeight),

              /// Full Name
              const RegisterTextfield(hintText: "Full Name"),
              SizedBox(height: textHeight),

              /// Email Address
              const RegisterTextfield(hintText: "Email Address"),
              SizedBox(height: textHeight),

              /// Date Of Birth
              const RegisterTextfield(hintText: "DOB-PLACEHOLDERTEST"),
              SizedBox(height: textHeight),

              /// Password
              const RegisterTextfield(hintText: "Password", obscureText: true),
              SizedBox(height: textHeight),

              /// Retype Password
              const RegisterTextfield(
                  hintText: "Re-type Password", obscureText: true),
              SizedBox(height: textHeight),

              /// Divider
              const RegisterDivider(),

              /// Privacy Policy
              PrivacyPolicyText(
                onPrivacyPolicyTap: () {
                  print("ROUTE THIS TO PRIVACY POLICY PAGE");
                },
              ),
              SizedBox(height: textHeight),

              /// Continue Button
              RegisterButton(
                onPressed: () {
                  print("PLACEHOLDER, ROUTE TO NEXT PAGE");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
