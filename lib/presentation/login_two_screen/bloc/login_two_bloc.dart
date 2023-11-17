import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:user_app/presentation/login_two_screen/models/login_two_model.dart';
part 'login_two_event.dart';
part 'login_two_state.dart';

/// A bloc that manages the state of a LoginTwo according to the event that is dispatched to it.
class LoginTwoBloc extends Bloc<LoginTwoEvent, LoginTwoState> {
  LoginTwoBloc(LoginTwoState initialState) : super(initialState) {
    on<LoginTwoInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<LoginTwoState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<LoginTwoState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword1: event.value,
    ));
  }

  _onInitialize(
    LoginTwoInitialEvent event,
    Emitter<LoginTwoState> emit,
  ) async {
    emit(state.copyWith(
      passwordController: TextEditingController(),
      newpasswordController: TextEditingController(),
      confirmpasswordController: TextEditingController(),
      isShowPassword: true,
      isShowPassword1: true,
    ));
  }
}
