// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [destinationfive_item_widget] screen.
class DestinationfiveItemModel extends Equatable {
  DestinationfiveItemModel({
    this.pickupcarOne,
    this.id,
  }) {
    pickupcarOne = pickupcarOne ?? false;
    id = id ?? "";
  }

  bool? pickupcarOne;

  String? id;

  DestinationfiveItemModel copyWith({
    bool? pickupcarOne,
    String? id,
  }) {
    return DestinationfiveItemModel(
      pickupcarOne: pickupcarOne ?? this.pickupcarOne,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [pickupcarOne, id];
}
