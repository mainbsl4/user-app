// ignore_for_file: must_be_immutable

part of 'destination_three_bloc.dart';

/// Represents the state of DestinationThree in the application.
class DestinationThreeState extends Equatable {
  DestinationThreeState({
    this.radioGroup = "",
    this.destinationThreeModelObj,
  });

  DestinationThreeModel? destinationThreeModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        destinationThreeModelObj,
      ];
  DestinationThreeState copyWith({
    String? radioGroup,
    DestinationThreeModel? destinationThreeModelObj,
  }) {
    return DestinationThreeState(
      radioGroup: radioGroup ?? this.radioGroup,
      destinationThreeModelObj:
          destinationThreeModelObj ?? this.destinationThreeModelObj,
    );
  }
}
