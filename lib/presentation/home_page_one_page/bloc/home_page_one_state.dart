// ignore_for_file: must_be_immutable

part of 'home_page_one_bloc.dart';

/// Represents the state of HomePageOne in the application.
class HomePageOneState extends Equatable {
  HomePageOneState({
    this.searchController,
    this.placeblackdpOneController,
    this.homePageOneModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? placeblackdpOneController;

  HomePageOneModel? homePageOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        placeblackdpOneController,
        homePageOneModelObj,
      ];
  HomePageOneState copyWith({
    TextEditingController? searchController,
    TextEditingController? placeblackdpOneController,
    HomePageOneModel? homePageOneModelObj,
  }) {
    return HomePageOneState(
      searchController: searchController ?? this.searchController,
      placeblackdpOneController:
          placeblackdpOneController ?? this.placeblackdpOneController,
      homePageOneModelObj: homePageOneModelObj ?? this.homePageOneModelObj,
    );
  }
}
