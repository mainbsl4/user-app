// ignore_for_file: must_be_immutable

part of 'destination_add_bloc.dart';

/// Represents the state of DestinationAdd in the application.
class DestinationAddState extends Equatable {
  DestinationAddState({
    this.frameTwoController,
    this.searchController,
    this.destinationAddModelObj,
  });

  TextEditingController? frameTwoController;

  TextEditingController? searchController;

  DestinationAddModel? destinationAddModelObj;

  @override
  List<Object?> get props => [
        frameTwoController,
        searchController,
        destinationAddModelObj,
      ];
  DestinationAddState copyWith({
    TextEditingController? frameTwoController,
    TextEditingController? searchController,
    DestinationAddModel? destinationAddModelObj,
  }) {
    return DestinationAddState(
      frameTwoController: frameTwoController ?? this.frameTwoController,
      searchController: searchController ?? this.searchController,
      destinationAddModelObj:
          destinationAddModelObj ?? this.destinationAddModelObj,
    );
  }
}
