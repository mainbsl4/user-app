// ignore_for_file: must_be_immutable

part of 'destination_twenty_bloc.dart';

/// Represents the state of DestinationTwenty in the application.
class DestinationTwentyState extends Equatable {
  DestinationTwentyState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.destinationTwentyModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  DestinationTwentyModel? destinationTwentyModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        destinationTwentyModelObj,
      ];
  DestinationTwentyState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    DestinationTwentyModel? destinationTwentyModelObj,
  }) {
    return DestinationTwentyState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      destinationTwentyModelObj:
          destinationTwentyModelObj ?? this.destinationTwentyModelObj,
    );
  }
}
