// ignore_for_file: must_be_immutable

part of 'destination_two_bloc.dart';

/// Represents the state of DestinationTwo in the application.
class DestinationTwoState extends Equatable {
  DestinationTwoState({
    this.isSelectedSwitch = false,
    this.radioGroup = "",
    this.destinationTwoModelObj,
  });

  DestinationTwoModel? destinationTwoModelObj;

  bool isSelectedSwitch;

  String radioGroup;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        radioGroup,
        destinationTwoModelObj,
      ];
  DestinationTwoState copyWith({
    bool? isSelectedSwitch,
    String? radioGroup,
    DestinationTwoModel? destinationTwoModelObj,
  }) {
    return DestinationTwoState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      radioGroup: radioGroup ?? this.radioGroup,
      destinationTwoModelObj:
          destinationTwoModelObj ?? this.destinationTwoModelObj,
    );
  }
}
