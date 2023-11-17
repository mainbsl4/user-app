// ignore_for_file: must_be_immutable

part of 'pay_bloc.dart';

/// Represents the state of Pay in the application.
class PayState extends Equatable {
  PayState({this.payModelObj});

  PayModel? payModelObj;

  @override
  List<Object?> get props => [
        payModelObj,
      ];
  PayState copyWith({PayModel? payModelObj}) {
    return PayState(
      payModelObj: payModelObj ?? this.payModelObj,
    );
  }
}
