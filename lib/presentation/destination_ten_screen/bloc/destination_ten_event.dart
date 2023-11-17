// ignore_for_file: must_be_immutable

part of 'destination_ten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationTen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationTenEvent extends Equatable {}

/// Event that is dispatched when the DestinationTen widget is first created.
class DestinationTenInitialEvent extends DestinationTenEvent {
  @override
  List<Object?> get props => [];
}
