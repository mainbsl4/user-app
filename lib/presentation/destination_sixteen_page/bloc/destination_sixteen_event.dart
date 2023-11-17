// ignore_for_file: must_be_immutable

part of 'destination_sixteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationSixteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationSixteenEvent extends Equatable {}

/// Event that is dispatched when the DestinationSixteen widget is first created.
class DestinationSixteenInitialEvent extends DestinationSixteenEvent {
  @override
  List<Object?> get props => [];
}
