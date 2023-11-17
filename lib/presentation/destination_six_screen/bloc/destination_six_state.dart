// ignore_for_file: must_be_immutable

part of 'destination_six_bloc.dart';

/// Represents the state of DestinationSix in the application.
class DestinationSixState extends Equatable {
  DestinationSixState({this.destinationSixModelObj});

  DestinationSixModel? destinationSixModelObj;

  @override
  List<Object?> get props => [
        destinationSixModelObj,
      ];
  DestinationSixState copyWith({DestinationSixModel? destinationSixModelObj}) {
    return DestinationSixState(
      destinationSixModelObj:
          destinationSixModelObj ?? this.destinationSixModelObj,
    );
  }
}
