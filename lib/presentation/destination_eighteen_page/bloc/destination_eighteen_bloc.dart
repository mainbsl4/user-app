import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:user_app/presentation/destination_eighteen_page/models/destination_eighteen_model.dart';
part 'destination_eighteen_event.dart';
part 'destination_eighteen_state.dart';

/// A bloc that manages the state of a DestinationEighteen according to the event that is dispatched to it.
class DestinationEighteenBloc
    extends Bloc<DestinationEighteenEvent, DestinationEighteenState> {
  DestinationEighteenBloc(DestinationEighteenState initialState)
      : super(initialState) {
    on<DestinationEighteenInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<DestinationEighteenState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<DestinationEighteenState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _onInitialize(
    DestinationEighteenInitialEvent event,
    Emitter<DestinationEighteenState> emit,
  ) async {
    emit(state.copyWith(
      group148Controller: TextEditingController(),
      isSelectedSwitch: false,
      radioGroup: "",
    ));
  }
}
