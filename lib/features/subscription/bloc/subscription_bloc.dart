import 'package:flutter_bloc/flutter_bloc.dart';

class SubscriptionBloc extends Cubit<String?> {
  SubscriptionBloc() : super(null);

  void select(String title) {
    // Toggle logic: unselect if already selected
    if (state == title) {
      emit(null); // unselect
    } else {
      emit(title); // select
    }
  }

  // void select(String title) {
  //   emit(title);
  // }
}
