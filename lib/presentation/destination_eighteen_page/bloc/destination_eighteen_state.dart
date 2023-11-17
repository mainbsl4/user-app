// ignore_for_file: must_be_immutable

part of 'destination_eighteen_bloc.dart';

/// Represents the state of DestinationEighteen in the application.
class DestinationEighteenState extends Equatable {
  DestinationEighteenState({
    this.group148Controller,
    this.isSelectedSwitch = false,
    this.radioGroup = "",
    this.destinationEighteenModelObj,
  });

  TextEditingController? group148Controller;

  DestinationEighteenModel? destinationEighteenModelObj;

  bool isSelectedSwitch;

  String radioGroup;

  @override
  List<Object?> get props => [
        group148Controller,
        isSelectedSwitch,
        radioGroup,
        destinationEighteenModelObj,
      ];
  DestinationEighteenState copyWith({
    TextEditingController? group148Controller,
    bool? isSelectedSwitch,
    String? radioGroup,
    DestinationEighteenModel? destinationEighteenModelObj,
  }) {
    return DestinationEighteenState(
      group148Controller: group148Controller ?? this.group148Controller,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      radioGroup: radioGroup ?? this.radioGroup,
      destinationEighteenModelObj:
          destinationEighteenModelObj ?? this.destinationEighteenModelObj,
    );
  }
}
