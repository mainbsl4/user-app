// ignore_for_file: must_be_immutable

part of 'destination_thirteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationThirteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationThirteenEvent extends Equatable {}

/// Event that is dispatched when the DestinationThirteen widget is first created.
class DestinationThirteenInitialEvent extends DestinationThirteenEvent {
  @override
  List<Object?> get props => [];
}
