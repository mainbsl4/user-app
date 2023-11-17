// ignore_for_file: must_be_immutable

part of 'destination_twelve_bloc.dart';

/// Represents the state of DestinationTwelve in the application.
class DestinationTwelveState extends Equatable {
  DestinationTwelveState({
    this.nameController,
    this.destinationTwelveModelObj,
  });

  TextEditingController? nameController;

  DestinationTwelveModel? destinationTwelveModelObj;

  @override
  List<Object?> get props => [
        nameController,
        destinationTwelveModelObj,
      ];
  DestinationTwelveState copyWith({
    TextEditingController? nameController,
    DestinationTwelveModel? destinationTwelveModelObj,
  }) {
    return DestinationTwelveState(
      nameController: nameController ?? this.nameController,
      destinationTwelveModelObj:
          destinationTwelveModelObj ?? this.destinationTwelveModelObj,
    );
  }
}
