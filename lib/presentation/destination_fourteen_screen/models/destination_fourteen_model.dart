// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'destinationfourteen_item_model.dart';

/// This class defines the variables used in the [destination_fourteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DestinationFourteenModel extends Equatable {
  DestinationFourteenModel({this.destinationfourteenItemList = const []}) {}

  List<DestinationfourteenItemModel> destinationfourteenItemList;

  DestinationFourteenModel copyWith(
      {List<DestinationfourteenItemModel>? destinationfourteenItemList}) {
    return DestinationFourteenModel(
      destinationfourteenItemList:
          destinationfourteenItemList ?? this.destinationfourteenItemList,
    );
  }

  @override
  List<Object?> get props => [destinationfourteenItemList];
}
