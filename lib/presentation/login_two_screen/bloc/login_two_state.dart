// ignore_for_file: must_be_immutable

part of 'login_two_bloc.dart';

/// Represents the state of LoginTwo in the application.
class LoginTwoState extends Equatable {
  LoginTwoState({
    this.passwordController,
    this.newpasswordController,
    this.confirmpasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.loginTwoModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? newpasswordController;

  TextEditingController? confirmpasswordController;

  LoginTwoModel? loginTwoModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        passwordController,
        newpasswordController,
        confirmpasswordController,
        isShowPassword,
        isShowPassword1,
        loginTwoModelObj,
      ];
  LoginTwoState copyWith({
    TextEditingController? passwordController,
    TextEditingController? newpasswordController,
    TextEditingController? confirmpasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    LoginTwoModel? loginTwoModelObj,
  }) {
    return LoginTwoState(
      passwordController: passwordController ?? this.passwordController,
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      loginTwoModelObj: loginTwoModelObj ?? this.loginTwoModelObj,
    );
  }
}
