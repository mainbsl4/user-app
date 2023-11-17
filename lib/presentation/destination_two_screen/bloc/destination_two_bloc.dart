import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:user_app/presentation/destination_two_screen/models/destination_two_model.dart';
part 'destination_two_event.dart';
part 'destination_two_state.dart';

/// A bloc that manages the state of a DestinationTwo according to the event that is dispatched to it.
class DestinationTwoBloc
    extends Bloc<DestinationTwoEvent, DestinationTwoState> {
  DestinationTwoBloc(DestinationTwoState initialState) : super(initialState) {
    on<DestinationTwoInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<DestinationTwoState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch: event.value));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<DestinationTwoState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _onInitialize(
    DestinationTwoInitialEvent event,
    Emitter<DestinationTwoState> emit,
  ) async {
    emit(state.copyWith(isSelectedSwitch: false, radioGroup: ""));
  }
}
