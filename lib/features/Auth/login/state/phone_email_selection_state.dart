import 'package:equatable/equatable.dart';

enum SelectedItem { phone, email }

class PhoneEmailSelectionState extends Equatable {
  final SelectedItem selectedItem;

  const PhoneEmailSelectionState({required this.selectedItem});

  @override
  List<Object> get props => [selectedItem];
}
