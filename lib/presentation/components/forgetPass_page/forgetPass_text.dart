import 'package:flutter/material.dart';

/// Header Reference
class ForgetPassHeadingReference {
  String value = "";

  ForgetPassHeadingReference(this.value);

  void update(String newText) {
    value = newText;
  }

  @override
  String toString() => value;
}

class ForgetPassHeading extends StatefulWidget {
  final ForgetPassHeadingReference headingText;

  const ForgetPassHeading({super.key, required this.headingText});

  @override
  State<ForgetPassHeading> createState() => _ForgetPassHeadingState();
}

class _ForgetPassHeadingState extends State<ForgetPassHeading> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        widget.headingText.value,
        style: const TextStyle(
            fontSize: 37, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}

/// Normal Text Reference

class ForgetPassTextReference {
  String value = "";

  ForgetPassTextReference(this.value);

  void update(String newText) {
    value = newText;
  }

  @override
  String toString() => value;
}

class ForgetPassText extends StatefulWidget {
  final ForgetPassTextReference normalText;

  const ForgetPassText({super.key, required this.normalText});

  @override
  State<ForgetPassText> createState() => _ForgetPassTextState();
}

class _ForgetPassTextState extends State<ForgetPassText> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        widget.normalText.value,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
