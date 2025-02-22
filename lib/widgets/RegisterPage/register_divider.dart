import 'package:flutter/material.dart';
import '/presentation/themes/colors.dart';

class RegisterDivider extends StatelessWidget {
  final double thickness;
  final double spacing;
  final Color color;

  const RegisterDivider({
    super.key,
    this.thickness = 1.0,
    this.spacing = 15.0,
    this.color = AppColors.ventrift_green,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(color: color, thickness: thickness),
        SizedBox(height: spacing),
      ],
    );
  }
}
