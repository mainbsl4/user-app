// ignore_for_file: must_be_immutable

part of 'destination_twenty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationTwenty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationTwentyEvent extends Equatable {}

/// Event that is dispatched when the DestinationTwenty widget is first created.
class DestinationTwentyInitialEvent extends DestinationTwentyEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends DestinationTwentyEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends DestinationTwentyEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
