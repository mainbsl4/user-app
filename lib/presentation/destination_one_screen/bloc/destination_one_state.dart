// ignore_for_file: must_be_immutable

part of 'destination_one_bloc.dart';

/// Represents the state of DestinationOne in the application.
class DestinationOneState extends Equatable {
  DestinationOneState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.destinationOneModelObj,
  });

  DestinationOneModel? destinationOneModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        destinationOneModelObj,
      ];
  DestinationOneState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    DestinationOneModel? destinationOneModelObj,
  }) {
    return DestinationOneState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      destinationOneModelObj:
          destinationOneModelObj ?? this.destinationOneModelObj,
    );
  }
}
