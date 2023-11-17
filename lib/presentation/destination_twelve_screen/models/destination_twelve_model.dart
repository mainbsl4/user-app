// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'destinationtwelve_item_model.dart';

/// This class defines the variables used in the [destination_twelve_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DestinationTwelveModel extends Equatable {
  DestinationTwelveModel({this.destinationtwelveItemList = const []}) {}

  List<DestinationtwelveItemModel> destinationtwelveItemList;

  DestinationTwelveModel copyWith(
      {List<DestinationtwelveItemModel>? destinationtwelveItemList}) {
    return DestinationTwelveModel(
      destinationtwelveItemList:
          destinationtwelveItemList ?? this.destinationtwelveItemList,
    );
  }

  @override
  List<Object?> get props => [destinationtwelveItemList];
}
