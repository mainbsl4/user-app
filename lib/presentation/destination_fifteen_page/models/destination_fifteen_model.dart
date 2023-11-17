// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'feettonopen_item_model.dart';
import 'feetton_item_model.dart';

/// This class defines the variables used in the [destination_fifteen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DestinationFifteenModel extends Equatable {
  DestinationFifteenModel({
    this.feettonopenItemList = const [],
    this.feettonItemList = const [],
  }) {}

  List<FeettonopenItemModel> feettonopenItemList;

  List<FeettonItemModel> feettonItemList;

  DestinationFifteenModel copyWith({
    List<FeettonopenItemModel>? feettonopenItemList,
    List<FeettonItemModel>? feettonItemList,
  }) {
    return DestinationFifteenModel(
      feettonopenItemList: feettonopenItemList ?? this.feettonopenItemList,
      feettonItemList: feettonItemList ?? this.feettonItemList,
    );
  }

  @override
  List<Object?> get props => [feettonopenItemList, feettonItemList];
}
