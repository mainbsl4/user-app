// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  LoginState({
    this.mobileNumberController,
    this.loginModelObj,
  });

  TextEditingController? mobileNumberController;

  LoginModel? loginModelObj;

  @override
  List<Object?> get props => [
        mobileNumberController,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? mobileNumberController,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      mobileNumberController:
          mobileNumberController ?? this.mobileNumberController,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
