// ignore_for_file: must_be_immutable

part of 'destination_fourteen_bloc.dart';

/// Represents the state of DestinationFourteen in the application.
class DestinationFourteenState extends Equatable {
  DestinationFourteenState({this.destinationFourteenModelObj});

  DestinationFourteenModel? destinationFourteenModelObj;

  @override
  List<Object?> get props => [
        destinationFourteenModelObj,
      ];
  DestinationFourteenState copyWith(
      {DestinationFourteenModel? destinationFourteenModelObj}) {
    return DestinationFourteenState(
      destinationFourteenModelObj:
          destinationFourteenModelObj ?? this.destinationFourteenModelObj,
    );
  }
}
