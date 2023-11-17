// ignore_for_file: must_be_immutable

part of 'destination_fifteen_bloc.dart';

/// Represents the state of DestinationFifteen in the application.
class DestinationFifteenState extends Equatable {
  DestinationFifteenState({
    this.mediumController,
    this.destinationFifteenModelObj,
  });

  TextEditingController? mediumController;

  DestinationFifteenModel? destinationFifteenModelObj;

  @override
  List<Object?> get props => [
        mediumController,
        destinationFifteenModelObj,
      ];
  DestinationFifteenState copyWith({
    TextEditingController? mediumController,
    DestinationFifteenModel? destinationFifteenModelObj,
  }) {
    return DestinationFifteenState(
      mediumController: mediumController ?? this.mediumController,
      destinationFifteenModelObj:
          destinationFifteenModelObj ?? this.destinationFifteenModelObj,
    );
  }
}
