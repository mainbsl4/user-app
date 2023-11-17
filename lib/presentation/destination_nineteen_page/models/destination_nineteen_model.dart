// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'destinationnineteen_item_model.dart';

/// This class defines the variables used in the [destination_nineteen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DestinationNineteenModel extends Equatable {
  DestinationNineteenModel({this.destinationnineteenItemList = const []}) {}

  List<DestinationnineteenItemModel> destinationnineteenItemList;

  DestinationNineteenModel copyWith(
      {List<DestinationnineteenItemModel>? destinationnineteenItemList}) {
    return DestinationNineteenModel(
      destinationnineteenItemList:
          destinationnineteenItemList ?? this.destinationnineteenItemList,
    );
  }

  @override
  List<Object?> get props => [destinationnineteenItemList];
}
