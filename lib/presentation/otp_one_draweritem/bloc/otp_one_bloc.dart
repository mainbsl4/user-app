import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:user_app/presentation/otp_one_draweritem/models/otp_one_model.dart';
part 'otp_one_event.dart';
part 'otp_one_state.dart';

/// A bloc that manages the state of a OtpOne according to the event that is dispatched to it.
class OtpOneBloc extends Bloc<OtpOneEvent, OtpOneState> {
  OtpOneBloc(OtpOneState initialState) : super(initialState) {
    on<OtpOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OtpOneInitialEvent event,
    Emitter<OtpOneState> emit,
  ) async {}
}
