import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:ventrift/presentation/blocs/form/form_cubit.dart';
import 'package:ventrift/presentation/themes/colors.dart';

class RegisterDatePicker extends StatefulWidget {
  const RegisterDatePicker({super.key});

  @override
  State<RegisterDatePicker> createState() => _RegisterDatePickerState();
}

class _RegisterDatePickerState extends State<RegisterDatePicker> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<DateTime?> displayDatePicker({
    required BuildContext context,
    DateTime? currentDate,
    DateTime? initialDate,
  }) async =>
      await showDatePicker(
        context: context,
        firstDate: DateTime(1900),
        lastDate: DateTime.now(),
        initialDate: initialDate,
        currentDate: currentDate,
        builder: (context, child) => Theme(
          data: Theme.of(context).copyWith(colorScheme: const ColorScheme.dark(primary: AppColors.ventriftGreen)),
          child: child!,
        ),
      );

  @override
  Widget build(BuildContext context) => BlocBuilder<FormCubit, Map<String, dynamic>>(
        buildWhen: (prev, curr) => prev['birthdate'] != curr['birthdate'],
        builder: (context, state) => TextFormField(
          controller: controller,
          readOnly: true,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "date of birth is required";
            }

            return null;
          },
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: AppColors.ventriftGreen, width: 2.0),
              ),
              hintText: "Date of Birth",
              suffixIcon: IconButton(
                icon: const Icon(
                  Icons.calendar_month,
                  color: Colors.grey,
                ),
                onPressed: () async => await displayDatePicker(
                  context: context,
                  initialDate: (state['birthdate'] != null) ? state['birthdate'] as DateTime : DateTime.now(),
                  currentDate: (state['birthdate'] != null) ? state['birthdate'] as DateTime : DateTime.now(),
                ).then((date) {
                  if (date != null && context.mounted) {
                    controller.text = DateFormat.yMMMMd().format(date);
                    BlocProvider.of<FormCubit>(context).updateField('birthdate', date);
                  }
                }),
              )),
          onTap: () async => await displayDatePicker(
            context: context,
            initialDate: (state['birthdate'] != null) ? state['birthdate'] as DateTime : DateTime.now(),
            currentDate: (state['birthdate'] != null) ? state['birthdate'] as DateTime : DateTime.now(),
          ).then((date) {
            if (date != null && context.mounted) {
              controller.text = DateFormat.yMMMMd().format(date);
              BlocProvider.of<FormCubit>(context).updateField('birthdate', date);
            }
          }),
        ),
      );
}
