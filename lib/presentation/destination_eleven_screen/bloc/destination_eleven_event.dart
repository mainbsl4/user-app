// ignore_for_file: must_be_immutable

part of 'destination_eleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationEleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationElevenEvent extends Equatable {}

/// Event that is dispatched when the DestinationEleven widget is first created.
class DestinationElevenInitialEvent extends DestinationElevenEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends DestinationElevenEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends DestinationElevenEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
