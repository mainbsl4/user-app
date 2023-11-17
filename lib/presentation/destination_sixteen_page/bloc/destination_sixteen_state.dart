// ignore_for_file: must_be_immutable

part of 'destination_sixteen_bloc.dart';

/// Represents the state of DestinationSixteen in the application.
class DestinationSixteenState extends Equatable {
  DestinationSixteenState({
    this.mediumController,
    this.destinationSixteenModelObj,
  });

  TextEditingController? mediumController;

  DestinationSixteenModel? destinationSixteenModelObj;

  @override
  List<Object?> get props => [
        mediumController,
        destinationSixteenModelObj,
      ];
  DestinationSixteenState copyWith({
    TextEditingController? mediumController,
    DestinationSixteenModel? destinationSixteenModelObj,
  }) {
    return DestinationSixteenState(
      mediumController: mediumController ?? this.mediumController,
      destinationSixteenModelObj:
          destinationSixteenModelObj ?? this.destinationSixteenModelObj,
    );
  }
}
