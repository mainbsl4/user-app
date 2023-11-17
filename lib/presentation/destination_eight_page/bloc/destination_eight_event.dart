// ignore_for_file: must_be_immutable

part of 'destination_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationEightEvent extends Equatable {}

/// Event that is dispatched when the DestinationEight widget is first created.
class DestinationEightInitialEvent extends DestinationEightEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends DestinationEightEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends DestinationEightEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
