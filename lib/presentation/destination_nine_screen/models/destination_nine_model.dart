// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:user_app/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [destination_nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DestinationNineModel extends Equatable {
  DestinationNineModel({
    this.dropdownItemList = const [],
    this.dropdownItemList1 = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<SelectionPopupModel> dropdownItemList1;

  DestinationNineModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
  }) {
    return DestinationNineModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, dropdownItemList1];
}
