// ignore_for_file: must_be_immutable

part of 'login_three_bloc.dart';

/// Represents the state of LoginThree in the application.
class LoginThreeState extends Equatable {
  LoginThreeState({
    this.passwordController,
    this.newpasswordController,
    this.confirmpasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.loginThreeModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? newpasswordController;

  TextEditingController? confirmpasswordController;

  LoginThreeModel? loginThreeModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        passwordController,
        newpasswordController,
        confirmpasswordController,
        isShowPassword,
        isShowPassword1,
        loginThreeModelObj,
      ];
  LoginThreeState copyWith({
    TextEditingController? passwordController,
    TextEditingController? newpasswordController,
    TextEditingController? confirmpasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    LoginThreeModel? loginThreeModelObj,
  }) {
    return LoginThreeState(
      passwordController: passwordController ?? this.passwordController,
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      loginThreeModelObj: loginThreeModelObj ?? this.loginThreeModelObj,
    );
  }
}
