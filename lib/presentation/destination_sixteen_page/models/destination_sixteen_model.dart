// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'destinationsixteen_item_model.dart';

/// This class defines the variables used in the [destination_sixteen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DestinationSixteenModel extends Equatable {
  DestinationSixteenModel({this.destinationsixteenItemList = const []}) {}

  List<DestinationsixteenItemModel> destinationsixteenItemList;

  DestinationSixteenModel copyWith(
      {List<DestinationsixteenItemModel>? destinationsixteenItemList}) {
    return DestinationSixteenModel(
      destinationsixteenItemList:
          destinationsixteenItemList ?? this.destinationsixteenItemList,
    );
  }

  @override
  List<Object?> get props => [destinationsixteenItemList];
}
