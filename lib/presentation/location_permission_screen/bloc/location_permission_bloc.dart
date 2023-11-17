import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:user_app/presentation/location_permission_screen/models/location_permission_model.dart';
part 'location_permission_event.dart';
part 'location_permission_state.dart';

/// A bloc that manages the state of a LocationPermission according to the event that is dispatched to it.
class LocationPermissionBloc
    extends Bloc<LocationPermissionEvent, LocationPermissionState> {
  LocationPermissionBloc(LocationPermissionState initialState)
      : super(initialState) {
    on<LocationPermissionInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LocationPermissionInitialEvent event,
    Emitter<LocationPermissionState> emit,
  ) async {}
}
