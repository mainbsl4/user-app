// ignore_for_file: must_be_immutable

part of 'destination_bloc.dart';

/// Represents the state of Destination in the application.
class DestinationState extends Equatable {
  DestinationState({
    this.frameTwoController,
    this.searchController,
    this.destinationModelObj,
  });

  TextEditingController? frameTwoController;

  TextEditingController? searchController;

  DestinationModel? destinationModelObj;

  @override
  List<Object?> get props => [
        frameTwoController,
        searchController,
        destinationModelObj,
      ];
  DestinationState copyWith({
    TextEditingController? frameTwoController,
    TextEditingController? searchController,
    DestinationModel? destinationModelObj,
  }) {
    return DestinationState(
      frameTwoController: frameTwoController ?? this.frameTwoController,
      searchController: searchController ?? this.searchController,
      destinationModelObj: destinationModelObj ?? this.destinationModelObj,
    );
  }
}
