// ignore_for_file: must_be_immutable

part of 'home_bloc.dart';

/// Represents the state of Home in the application.
class HomeState extends Equatable {
  HomeState({
    this.searchController,
    this.placeblackdpOneController,
    this.homeModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? placeblackdpOneController;

  HomeModel? homeModelObj;

  @override
  List<Object?> get props => [
        searchController,
        placeblackdpOneController,
        homeModelObj,
      ];
  HomeState copyWith({
    TextEditingController? searchController,
    TextEditingController? placeblackdpOneController,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      searchController: searchController ?? this.searchController,
      placeblackdpOneController:
          placeblackdpOneController ?? this.placeblackdpOneController,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}
