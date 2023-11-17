// ignore_for_file: must_be_immutable

part of 'destination_nineteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationNineteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationNineteenEvent extends Equatable {}

/// Event that is dispatched when the DestinationNineteen widget is first created.
class DestinationNineteenInitialEvent extends DestinationNineteenEvent {
  @override
  List<Object?> get props => [];
}

class DestinationnineteenItemEvent extends DestinationNineteenEvent {
  DestinationnineteenItemEvent({
    required this.index,
    this.radioGroup,
  });

  int index;

  String? radioGroup;

  @override
  List<Object?> get props => [
        index,
        radioGroup,
      ];
}
