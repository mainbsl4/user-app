import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:user_app/presentation/destination_one_screen/models/destination_one_model.dart';
part 'destination_one_event.dart';
part 'destination_one_state.dart';

/// A bloc that manages the state of a DestinationOne according to the event that is dispatched to it.
class DestinationOneBloc
    extends Bloc<DestinationOneEvent, DestinationOneState> {
  DestinationOneBloc(DestinationOneState initialState) : super(initialState) {
    on<DestinationOneInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeSwitch1Event>(_changeSwitch1);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<DestinationOneState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch: event.value));
  }

  _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<DestinationOneState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch1: event.value));
  }

  _onInitialize(
    DestinationOneInitialEvent event,
    Emitter<DestinationOneState> emit,
  ) async {
    emit(state.copyWith(isSelectedSwitch: false, isSelectedSwitch1: false));
  }
}
