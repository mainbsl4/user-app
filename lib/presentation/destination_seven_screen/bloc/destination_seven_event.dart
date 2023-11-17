// ignore_for_file: must_be_immutable

part of 'destination_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationSevenEvent extends Equatable {}

/// Event that is dispatched when the DestinationSeven widget is first created.
class DestinationSevenInitialEvent extends DestinationSevenEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends DestinationSevenEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends DestinationSevenEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown2Event extends DestinationSevenEvent {
  ChangeDropDown2Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown3Event extends DestinationSevenEvent {
  ChangeDropDown3Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
