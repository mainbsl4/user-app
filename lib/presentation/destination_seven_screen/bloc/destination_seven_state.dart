// ignore_for_file: must_be_immutable

part of 'destination_seven_bloc.dart';

/// Represents the state of DestinationSeven in the application.
class DestinationSevenState extends Equatable {
  DestinationSevenState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.selectedDropDownValue3,
    this.destinationSevenModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  DestinationSevenModel? destinationSevenModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        selectedDropDownValue3,
        destinationSevenModelObj,
      ];
  DestinationSevenState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    SelectionPopupModel? selectedDropDownValue3,
    DestinationSevenModel? destinationSevenModelObj,
  }) {
    return DestinationSevenState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      selectedDropDownValue3:
          selectedDropDownValue3 ?? this.selectedDropDownValue3,
      destinationSevenModelObj:
          destinationSevenModelObj ?? this.destinationSevenModelObj,
    );
  }
}
