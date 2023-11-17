// ignore_for_file: must_be_immutable

part of 'destination_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationOneEvent extends Equatable {}

/// Event that is dispatched when the DestinationOne widget is first created.
class DestinationOneInitialEvent extends DestinationOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends DestinationOneEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends DestinationOneEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
