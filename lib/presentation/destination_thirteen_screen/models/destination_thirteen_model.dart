// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'destinationthirteen_item_model.dart';

/// This class defines the variables used in the [destination_thirteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DestinationThirteenModel extends Equatable {
  DestinationThirteenModel({this.destinationthirteenItemList = const []}) {}

  List<DestinationthirteenItemModel> destinationthirteenItemList;

  DestinationThirteenModel copyWith(
      {List<DestinationthirteenItemModel>? destinationthirteenItemList}) {
    return DestinationThirteenModel(
      destinationthirteenItemList:
          destinationthirteenItemList ?? this.destinationthirteenItemList,
    );
  }

  @override
  List<Object?> get props => [destinationthirteenItemList];
}
