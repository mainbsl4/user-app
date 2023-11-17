// ignore_for_file: must_be_immutable

part of 'otp_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OtpOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OtpOneEvent extends Equatable {}

/// Event that is dispatched when the OtpOne widget is first created.
class OtpOneInitialEvent extends OtpOneEvent {
  @override
  List<Object?> get props => [];
}
