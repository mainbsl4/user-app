// ignore_for_file: must_be_immutable

part of 'login_one_bloc.dart';

/// Represents the state of LoginOne in the application.
class LoginOneState extends Equatable {
  LoginOneState({
    this.passwordController,
    this.isShowPassword = true,
    this.rememberMe = false,
    this.loginOneModelObj,
  });

  TextEditingController? passwordController;

  LoginOneModel? loginOneModelObj;

  bool isShowPassword;

  bool rememberMe;

  @override
  List<Object?> get props => [
        passwordController,
        isShowPassword,
        rememberMe,
        loginOneModelObj,
      ];
  LoginOneState copyWith({
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? rememberMe,
    LoginOneModel? loginOneModelObj,
  }) {
    return LoginOneState(
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      rememberMe: rememberMe ?? this.rememberMe,
      loginOneModelObj: loginOneModelObj ?? this.loginOneModelObj,
    );
  }
}
