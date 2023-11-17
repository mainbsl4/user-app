// ignore_for_file: must_be_immutable

part of 'destination_add_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationAdd widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationAddEvent extends Equatable {}

/// Event that is dispatched when the DestinationAdd widget is first created.
class DestinationAddInitialEvent extends DestinationAddEvent {
  @override
  List<Object?> get props => [];
}
