// ignore_for_file: must_be_immutable

part of 'destination_five_bloc.dart';

/// Represents the state of DestinationFive in the application.
class DestinationFiveState extends Equatable {
  DestinationFiveState({
    this.addanoteController,
    this.destinationFiveModelObj,
  });

  TextEditingController? addanoteController;

  DestinationFiveModel? destinationFiveModelObj;

  @override
  List<Object?> get props => [
        addanoteController,
        destinationFiveModelObj,
      ];
  DestinationFiveState copyWith({
    TextEditingController? addanoteController,
    DestinationFiveModel? destinationFiveModelObj,
  }) {
    return DestinationFiveState(
      addanoteController: addanoteController ?? this.addanoteController,
      destinationFiveModelObj:
          destinationFiveModelObj ?? this.destinationFiveModelObj,
    );
  }
}
