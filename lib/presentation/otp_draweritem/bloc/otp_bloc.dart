import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:user_app/presentation/otp_draweritem/models/otp_model.dart';
part 'otp_event.dart';
part 'otp_state.dart';

/// A bloc that manages the state of a Otp according to the event that is dispatched to it.
class OtpBloc extends Bloc<OtpEvent, OtpState> {
  OtpBloc(OtpState initialState) : super(initialState) {
    on<OtpInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OtpInitialEvent event,
    Emitter<OtpState> emit,
  ) async {}
}
