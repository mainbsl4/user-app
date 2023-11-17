// ignore_for_file: must_be_immutable

part of 'destination_ten_bloc.dart';

/// Represents the state of DestinationTen in the application.
class DestinationTenState extends Equatable {
  DestinationTenState({
    this.searchController,
    this.destinationTenModelObj,
  });

  TextEditingController? searchController;

  DestinationTenModel? destinationTenModelObj;

  @override
  List<Object?> get props => [
        searchController,
        destinationTenModelObj,
      ];
  DestinationTenState copyWith({
    TextEditingController? searchController,
    DestinationTenModel? destinationTenModelObj,
  }) {
    return DestinationTenState(
      searchController: searchController ?? this.searchController,
      destinationTenModelObj:
          destinationTenModelObj ?? this.destinationTenModelObj,
    );
  }
}
