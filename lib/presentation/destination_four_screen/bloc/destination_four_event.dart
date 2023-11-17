// ignore_for_file: must_be_immutable

part of 'destination_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationFourEvent extends Equatable {}

/// Event that is dispatched when the DestinationFour widget is first created.
class DestinationFourInitialEvent extends DestinationFourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends DestinationFourEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
