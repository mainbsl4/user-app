// ignore_for_file: must_be_immutable

part of 'destination_seventeen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationSeventeen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationSeventeenEvent extends Equatable {}

/// Event that is dispatched when the DestinationSeventeen widget is first created.
class DestinationSeventeenInitialEvent extends DestinationSeventeenEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends DestinationSeventeenEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends DestinationSeventeenEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
