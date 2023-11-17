// ignore_for_file: must_be_immutable

part of 'otp_bloc.dart';

/// Represents the state of Otp in the application.
class OtpState extends Equatable {
  OtpState({this.otpModelObj});

  OtpModel? otpModelObj;

  @override
  List<Object?> get props => [
        otpModelObj,
      ];
  OtpState copyWith({OtpModel? otpModelObj}) {
    return OtpState(
      otpModelObj: otpModelObj ?? this.otpModelObj,
    );
  }
}
