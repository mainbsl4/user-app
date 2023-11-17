// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'destinationthree_item_model.dart';

/// This class defines the variables used in the [destination_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DestinationThreeModel extends Equatable {
  DestinationThreeModel({this.destinationthreeItemList = const []}) {}

  List<DestinationthreeItemModel> destinationthreeItemList;

  DestinationThreeModel copyWith(
      {List<DestinationthreeItemModel>? destinationthreeItemList}) {
    return DestinationThreeModel(
      destinationthreeItemList:
          destinationthreeItemList ?? this.destinationthreeItemList,
    );
  }

  @override
  List<Object?> get props => [destinationthreeItemList];
}
