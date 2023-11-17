// ignore_for_file: must_be_immutable

part of 'destination_nineteen_bloc.dart';

/// Represents the state of DestinationNineteen in the application.
class DestinationNineteenState extends Equatable {
  DestinationNineteenState({this.destinationNineteenModelObj});

  DestinationNineteenModel? destinationNineteenModelObj;

  @override
  List<Object?> get props => [
        destinationNineteenModelObj,
      ];
  DestinationNineteenState copyWith(
      {DestinationNineteenModel? destinationNineteenModelObj}) {
    return DestinationNineteenState(
      destinationNineteenModelObj:
          destinationNineteenModelObj ?? this.destinationNineteenModelObj,
    );
  }
}
