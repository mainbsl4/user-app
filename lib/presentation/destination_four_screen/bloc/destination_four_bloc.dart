import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:user_app/presentation/destination_four_screen/models/destination_four_model.dart';
part 'destination_four_event.dart';
part 'destination_four_state.dart';

/// A bloc that manages the state of a DestinationFour according to the event that is dispatched to it.
class DestinationFourBloc
    extends Bloc<DestinationFourEvent, DestinationFourState> {
  DestinationFourBloc(DestinationFourState initialState) : super(initialState) {
    on<DestinationFourInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<DestinationFourState> emit,
  ) {
    emit(state.copyWith(pickupcarOne: event.value));
  }

  _onInitialize(
    DestinationFourInitialEvent event,
    Emitter<DestinationFourState> emit,
  ) async {
    emit(state.copyWith(pickupcarOne: false));
  }
}
