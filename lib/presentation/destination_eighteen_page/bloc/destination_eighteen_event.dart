// ignore_for_file: must_be_immutable

part of 'destination_eighteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationEighteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationEighteenEvent extends Equatable {}

/// Event that is dispatched when the DestinationEighteen widget is first created.
class DestinationEighteenInitialEvent extends DestinationEighteenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends DestinationEighteenEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends DestinationEighteenEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
