// ignore_for_file: must_be_immutable

part of 'otp_one_bloc.dart';

/// Represents the state of OtpOne in the application.
class OtpOneState extends Equatable {
  OtpOneState({this.otpOneModelObj});

  OtpOneModel? otpOneModelObj;

  @override
  List<Object?> get props => [
        otpOneModelObj,
      ];
  OtpOneState copyWith({OtpOneModel? otpOneModelObj}) {
    return OtpOneState(
      otpOneModelObj: otpOneModelObj ?? this.otpOneModelObj,
    );
  }
}
