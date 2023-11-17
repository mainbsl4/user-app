// ignore_for_file: must_be_immutable

part of 'destination_fifteen_tab_container_bloc.dart';

/// Represents the state of DestinationFifteenTabContainer in the application.
class DestinationFifteenTabContainerState extends Equatable {
  DestinationFifteenTabContainerState(
      {this.destinationFifteenTabContainerModelObj});

  DestinationFifteenTabContainerModel? destinationFifteenTabContainerModelObj;

  @override
  List<Object?> get props => [
        destinationFifteenTabContainerModelObj,
      ];
  DestinationFifteenTabContainerState copyWith(
      {DestinationFifteenTabContainerModel?
          destinationFifteenTabContainerModelObj}) {
    return DestinationFifteenTabContainerState(
      destinationFifteenTabContainerModelObj:
          destinationFifteenTabContainerModelObj ??
              this.destinationFifteenTabContainerModelObj,
    );
  }
}
