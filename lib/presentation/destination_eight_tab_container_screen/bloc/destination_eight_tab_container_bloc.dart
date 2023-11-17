import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:user_app/presentation/destination_eight_tab_container_screen/models/destination_eight_tab_container_model.dart';
part 'destination_eight_tab_container_event.dart';
part 'destination_eight_tab_container_state.dart';

/// A bloc that manages the state of a DestinationEightTabContainer according to the event that is dispatched to it.
class DestinationEightTabContainerBloc extends Bloc<
    DestinationEightTabContainerEvent, DestinationEightTabContainerState> {
  DestinationEightTabContainerBloc(
      DestinationEightTabContainerState initialState)
      : super(initialState) {
    on<DestinationEightTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DestinationEightTabContainerInitialEvent event,
    Emitter<DestinationEightTabContainerState> emit,
  ) async {}
}
