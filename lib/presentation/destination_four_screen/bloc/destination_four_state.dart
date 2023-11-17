// ignore_for_file: must_be_immutable

part of 'destination_four_bloc.dart';

/// Represents the state of DestinationFour in the application.
class DestinationFourState extends Equatable {
  DestinationFourState({
    this.pickupcarOne = false,
    this.destinationFourModelObj,
  });

  DestinationFourModel? destinationFourModelObj;

  bool pickupcarOne;

  @override
  List<Object?> get props => [
        pickupcarOne,
        destinationFourModelObj,
      ];
  DestinationFourState copyWith({
    bool? pickupcarOne,
    DestinationFourModel? destinationFourModelObj,
  }) {
    return DestinationFourState(
      pickupcarOne: pickupcarOne ?? this.pickupcarOne,
      destinationFourModelObj:
          destinationFourModelObj ?? this.destinationFourModelObj,
    );
  }
}
