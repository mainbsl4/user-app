// ignore_for_file: must_be_immutable

part of 'destination_eight_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DestinationEightTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DestinationEightTabContainerEvent extends Equatable {}

/// Event that is dispatched when the DestinationEightTabContainer widget is first created.
class DestinationEightTabContainerInitialEvent
    extends DestinationEightTabContainerEvent {
  @override
  List<Object?> get props => [];
}
