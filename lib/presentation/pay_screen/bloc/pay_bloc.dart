import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:user_app/presentation/pay_screen/models/pay_model.dart';
part 'pay_event.dart';
part 'pay_state.dart';

/// A bloc that manages the state of a Pay according to the event that is dispatched to it.
class PayBloc extends Bloc<PayEvent, PayState> {
  PayBloc(PayState initialState) : super(initialState) {
    on<PayInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PayInitialEvent event,
    Emitter<PayState> emit,
  ) async {}
}
