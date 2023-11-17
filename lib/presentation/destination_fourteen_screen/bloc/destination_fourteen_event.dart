// ignore_for_file: must_be_immutable

part of 'destination_fourteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationFourteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationFourteenEvent extends Equatable {}

/// Event that is dispatched when the DestinationFourteen widget is first created.
class DestinationFourteenInitialEvent extends DestinationFourteenEvent {
  @override
  List<Object?> get props => [];
}

class DestinationfourteenItemEvent extends DestinationFourteenEvent {
  DestinationfourteenItemEvent({
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
