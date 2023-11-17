// ignore_for_file: must_be_immutable

part of 'location_permission_bloc.dart';

/// Represents the state of LocationPermission in the application.
class LocationPermissionState extends Equatable {
  LocationPermissionState({this.locationPermissionModelObj});

  LocationPermissionModel? locationPermissionModelObj;

  @override
  List<Object?> get props => [
        locationPermissionModelObj,
      ];
  LocationPermissionState copyWith(
      {LocationPermissionModel? locationPermissionModelObj}) {
    return LocationPermissionState(
      locationPermissionModelObj:
          locationPermissionModelObj ?? this.locationPermissionModelObj,
    );
  }
}
