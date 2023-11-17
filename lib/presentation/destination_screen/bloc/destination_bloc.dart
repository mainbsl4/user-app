import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:user_app/presentation/destination_screen/models/destination_model.dart';
part 'destination_event.dart';
part 'destination_state.dart';

/// A bloc that manages the state of a Destination according to the event that is dispatched to it.
class DestinationBloc extends Bloc<DestinationEvent, DestinationState> {
  DestinationBloc(DestinationState initialState) : super(initialState) {
    on<DestinationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DestinationInitialEvent event,
    Emitter<DestinationState> emit,
  ) async {
    emit(state.copyWith(
        frameTwoController: TextEditingController(),
        searchController: TextEditingController()));
  }
}
