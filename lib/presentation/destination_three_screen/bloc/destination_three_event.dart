// ignore_for_file: must_be_immutable

part of 'destination_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationThreeEvent extends Equatable {}

/// Event that is dispatched when the DestinationThree widget is first created.
class DestinationThreeInitialEvent extends DestinationThreeEvent {
  @override
  List<Object?> get props => [];
}

class DestinationthreeItemEvent extends DestinationThreeEvent {
  DestinationthreeItemEvent({
    required this.index,
    this.isSelectedSwitch,
  });

  int index;

  bool? isSelectedSwitch;

  @override
  List<Object?> get props => [
        index,
        isSelectedSwitch,
      ];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends DestinationThreeEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
