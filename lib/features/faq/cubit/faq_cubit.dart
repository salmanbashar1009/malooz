import 'package:flutter_bloc/flutter_bloc.dart';

class FaqCubit extends Cubit<int?> {
  FaqCubit() : super(null);

  void toggle(int index) {
    if (state == index) {
      emit(null); // collapse
    } else {
      emit(index); // expand
    }
  }
}
