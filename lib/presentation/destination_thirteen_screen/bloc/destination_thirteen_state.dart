// ignore_for_file: must_be_immutable

part of 'destination_thirteen_bloc.dart';

/// Represents the state of DestinationThirteen in the application.
class DestinationThirteenState extends Equatable {
  DestinationThirteenState({
    this.searchController,
    this.destinationThirteenModelObj,
  });

  TextEditingController? searchController;

  DestinationThirteenModel? destinationThirteenModelObj;

  @override
  List<Object?> get props => [
        searchController,
        destinationThirteenModelObj,
      ];
  DestinationThirteenState copyWith({
    TextEditingController? searchController,
    DestinationThirteenModel? destinationThirteenModelObj,
  }) {
    return DestinationThirteenState(
      searchController: searchController ?? this.searchController,
      destinationThirteenModelObj:
          destinationThirteenModelObj ?? this.destinationThirteenModelObj,
    );
  }
}
