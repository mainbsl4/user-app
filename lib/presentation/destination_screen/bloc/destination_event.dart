// ignore_for_file: must_be_immutable

part of 'destination_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Destination widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationEvent extends Equatable {}

/// Event that is dispatched when the Destination widget is first created.
class DestinationInitialEvent extends DestinationEvent {
  @override
  List<Object?> get props => [];
}
