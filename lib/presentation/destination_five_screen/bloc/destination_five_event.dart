// ignore_for_file: must_be_immutable

part of 'destination_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationFiveEvent extends Equatable {}

/// Event that is dispatched when the DestinationFive widget is first created.
class DestinationFiveInitialEvent extends DestinationFiveEvent {
  @override
  List<Object?> get props => [];
}

class DestinationfiveItemEvent extends DestinationFiveEvent {
  DestinationfiveItemEvent({
    required this.index,
    this.pickupcarOne,
  });

  int index;

  bool? pickupcarOne;

  @override
  List<Object?> get props => [
        index,
        pickupcarOne,
      ];
}
