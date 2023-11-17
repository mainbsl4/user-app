// ignore_for_file: must_be_immutable

part of 'login_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginTwoEvent extends Equatable {}

/// Event that is dispatched when the LoginTwo widget is first created.
class LoginTwoInitialEvent extends LoginTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends LoginTwoEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends LoginTwoEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
