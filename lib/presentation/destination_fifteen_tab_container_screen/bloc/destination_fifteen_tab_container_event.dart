// ignore_for_file: must_be_immutable

part of 'destination_fifteen_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationFifteenTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationFifteenTabContainerEvent extends Equatable {}

/// Event that is dispatched when the DestinationFifteenTabContainer widget is first created.
class DestinationFifteenTabContainerInitialEvent
    extends DestinationFifteenTabContainerEvent {
  @override
  List<Object?> get props => [];
}
