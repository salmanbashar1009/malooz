import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malooz/features/Auth/login/state/phone_email_selection_state.dart';


class PHoneEmailSelectionBloc extends Cubit<PhoneEmailSelectionState> {
  PHoneEmailSelectionBloc() : super(const PhoneEmailSelectionState(selectedItem: SelectedItem.phone));

  void selectPhone() => emit(const PhoneEmailSelectionState(selectedItem: SelectedItem.phone));

  void selectEmail() => emit(const PhoneEmailSelectionState(selectedItem: SelectedItem.email));
}
