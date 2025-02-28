import 'package:flutter_bloc/flutter_bloc.dart';

class FormCubit extends Cubit<Map<String, dynamic>> {
  FormCubit() : super({});

  void updateField(String field, dynamic value) => emit({...state, field: value});

  void reset() => emit({});
}
