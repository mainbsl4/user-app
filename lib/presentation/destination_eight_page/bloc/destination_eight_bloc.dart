import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:user_app/presentation/destination_eight_page/models/destination_eight_model.dart';
part 'destination_eight_event.dart';
part 'destination_eight_state.dart';

/// A bloc that manages the state of a DestinationEight according to the event that is dispatched to it.
class DestinationEightBloc
    extends Bloc<DestinationEightEvent, DestinationEightState> {
  DestinationEightBloc(DestinationEightState initialState)
      : super(initialState) {
    on<DestinationEightInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<DestinationEightState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<DestinationEightState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _onInitialize(
    DestinationEightInitialEvent event,
    Emitter<DestinationEightState> emit,
  ) async {
    emit(state.copyWith(
      group122Controller: TextEditingController(),
      isSelectedSwitch: false,
      radioGroup: "",
    ));
  }
}
