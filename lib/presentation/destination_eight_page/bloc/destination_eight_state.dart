// ignore_for_file: must_be_immutable

part of 'destination_eight_bloc.dart';

/// Represents the state of DestinationEight in the application.
class DestinationEightState extends Equatable {
  DestinationEightState({
    this.group122Controller,
    this.isSelectedSwitch = false,
    this.radioGroup = "",
    this.destinationEightModelObj,
  });

  TextEditingController? group122Controller;

  DestinationEightModel? destinationEightModelObj;

  bool isSelectedSwitch;

  String radioGroup;

  @override
  List<Object?> get props => [
        group122Controller,
        isSelectedSwitch,
        radioGroup,
        destinationEightModelObj,
      ];
  DestinationEightState copyWith({
    TextEditingController? group122Controller,
    bool? isSelectedSwitch,
    String? radioGroup,
    DestinationEightModel? destinationEightModelObj,
  }) {
    return DestinationEightState(
      group122Controller: group122Controller ?? this.group122Controller,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      radioGroup: radioGroup ?? this.radioGroup,
      destinationEightModelObj:
          destinationEightModelObj ?? this.destinationEightModelObj,
    );
  }
}
