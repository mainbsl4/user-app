// ignore_for_file: must_be_immutable

part of 'destination_eight_tab_container_bloc.dart';

/// Represents the state of DestinationEightTabContainer in the application.
class DestinationEightTabContainerState extends Equatable {
  DestinationEightTabContainerState(
      {this.destinationEightTabContainerModelObj});

  DestinationEightTabContainerModel? destinationEightTabContainerModelObj;

  @override
  List<Object?> get props => [
        destinationEightTabContainerModelObj,
      ];
  DestinationEightTabContainerState copyWith(
      {DestinationEightTabContainerModel?
          destinationEightTabContainerModelObj}) {
    return DestinationEightTabContainerState(
      destinationEightTabContainerModelObj:
          destinationEightTabContainerModelObj ??
              this.destinationEightTabContainerModelObj,
    );
  }
}
