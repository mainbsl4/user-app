// ignore_for_file: must_be_immutable

part of 'destination_twelve_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationTwelve widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationTwelveEvent extends Equatable {}

/// Event that is dispatched when the DestinationTwelve widget is first created.
class DestinationTwelveInitialEvent extends DestinationTwelveEvent {
  @override
  List<Object?> get props => [];
}
