// ignore_for_file: must_be_immutable

part of 'destination_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationTwoEvent extends Equatable {}

/// Event that is dispatched when the DestinationTwo widget is first created.
class DestinationTwoInitialEvent extends DestinationTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends DestinationTwoEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends DestinationTwoEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
