// ignore_for_file: must_be_immutable

part of 'destination_nine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationNine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationNineEvent extends Equatable {}

/// Event that is dispatched when the DestinationNine widget is first created.
class DestinationNineInitialEvent extends DestinationNineEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends DestinationNineEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends DestinationNineEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
