import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:user_app/presentation/destination_add_screen/models/destination_add_model.dart';
part 'destination_add_event.dart';
part 'destination_add_state.dart';

/// A bloc that manages the state of a DestinationAdd according to the event that is dispatched to it.
class DestinationAddBloc
    extends Bloc<DestinationAddEvent, DestinationAddState> {
  DestinationAddBloc(DestinationAddState initialState) : super(initialState) {
    on<DestinationAddInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DestinationAddInitialEvent event,
    Emitter<DestinationAddState> emit,
  ) async {
    emit(state.copyWith(
        frameTwoController: TextEditingController(),
        searchController: TextEditingController()));
  }
}
