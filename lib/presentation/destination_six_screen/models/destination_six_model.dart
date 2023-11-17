// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'destinationsix_item_model.dart';

/// This class defines the variables used in the [destination_six_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DestinationSixModel extends Equatable {
  DestinationSixModel({this.destinationsixItemList = const []}) {}

  List<DestinationsixItemModel> destinationsixItemList;

  DestinationSixModel copyWith(
      {List<DestinationsixItemModel>? destinationsixItemList}) {
    return DestinationSixModel(
      destinationsixItemList:
          destinationsixItemList ?? this.destinationsixItemList,
    );
  }

  @override
  List<Object?> get props => [destinationsixItemList];
}
