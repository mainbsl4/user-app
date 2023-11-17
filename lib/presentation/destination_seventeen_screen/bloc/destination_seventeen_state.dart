// ignore_for_file: must_be_immutable

part of 'destination_seventeen_bloc.dart';

/// Represents the state of DestinationSeventeen in the application.
class DestinationSeventeenState extends Equatable {
  DestinationSeventeenState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.destinationSeventeenModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  DestinationSeventeenModel? destinationSeventeenModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        destinationSeventeenModelObj,
      ];
  DestinationSeventeenState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    DestinationSeventeenModel? destinationSeventeenModelObj,
  }) {
    return DestinationSeventeenState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      destinationSeventeenModelObj:
          destinationSeventeenModelObj ?? this.destinationSeventeenModelObj,
    );
  }
}
