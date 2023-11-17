import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:user_app/presentation/destination_fifteen_tab_container_screen/models/destination_fifteen_tab_container_model.dart';
part 'destination_fifteen_tab_container_event.dart';
part 'destination_fifteen_tab_container_state.dart';

/// A bloc that manages the state of a DestinationFifteenTabContainer according to the event that is dispatched to it.
class DestinationFifteenTabContainerBloc extends Bloc<
    DestinationFifteenTabContainerEvent, DestinationFifteenTabContainerState> {
  DestinationFifteenTabContainerBloc(
      DestinationFifteenTabContainerState initialState)
      : super(initialState) {
    on<DestinationFifteenTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DestinationFifteenTabContainerInitialEvent event,
    Emitter<DestinationFifteenTabContainerState> emit,
  ) async {}
}
