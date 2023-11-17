// ignore_for_file: must_be_immutable

part of 'location_permission_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LocationPermission widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LocationPermissionEvent extends Equatable {}

/// Event that is dispatched when the LocationPermission widget is first created.
class LocationPermissionInitialEvent extends LocationPermissionEvent {
  @override
  List<Object?> get props => [];
}
