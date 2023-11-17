// ignore_for_file: must_be_immutable

part of 'destination_eleven_bloc.dart';

/// Represents the state of DestinationEleven in the application.
class DestinationElevenState extends Equatable {
  DestinationElevenState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.destinationElevenModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  DestinationElevenModel? destinationElevenModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        destinationElevenModelObj,
      ];
  DestinationElevenState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    DestinationElevenModel? destinationElevenModelObj,
  }) {
    return DestinationElevenState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      destinationElevenModelObj:
          destinationElevenModelObj ?? this.destinationElevenModelObj,
    );
  }
}
