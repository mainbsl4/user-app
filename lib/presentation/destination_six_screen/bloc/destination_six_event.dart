// ignore_for_file: must_be_immutable

part of 'destination_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationSixEvent extends Equatable {}

/// Event that is dispatched when the DestinationSix widget is first created.
class DestinationSixInitialEvent extends DestinationSixEvent {
  @override
  List<Object?> get props => [];
}
