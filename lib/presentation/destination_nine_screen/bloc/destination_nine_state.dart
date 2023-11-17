// ignore_for_file: must_be_immutable

part of 'destination_nine_bloc.dart';

/// Represents the state of DestinationNine in the application.
class DestinationNineState extends Equatable {
  DestinationNineState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.destinationNineModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  DestinationNineModel? destinationNineModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        destinationNineModelObj,
      ];
  DestinationNineState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    DestinationNineModel? destinationNineModelObj,
  }) {
    return DestinationNineState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      destinationNineModelObj:
          destinationNineModelObj ?? this.destinationNineModelObj,
    );
  }
}
