// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.personoutlineblackdpOneController,
    this.callController,
    this.signUpModelObj,
  });

  TextEditingController? personoutlineblackdpOneController;

  TextEditingController? callController;

  SignUpModel? signUpModelObj;

  @override
  List<Object?> get props => [
        personoutlineblackdpOneController,
        callController,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? personoutlineblackdpOneController,
    TextEditingController? callController,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      personoutlineblackdpOneController: personoutlineblackdpOneController ??
          this.personoutlineblackdpOneController,
      callController: callController ?? this.callController,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
