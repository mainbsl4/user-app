// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [destinationthree_item_widget] screen.
class DestinationthreeItemModel extends Equatable {
  DestinationthreeItemModel({
    this.circleImage,
    this.isSelectedSwitch,
    this.fortyNine,
    this.shamim,
    this.tripsCounter,
    this.id,
  }) {
    circleImage = circleImage ?? ImageConstant.imgEllipse41;
    isSelectedSwitch = isSelectedSwitch ?? false;
    fortyNine = fortyNine ?? "4.9";
    shamim = shamim ?? "Shamim";
    tripsCounter = tripsCounter ?? "1267 trips";
    id = id ?? "";
  }

  String? circleImage;

  bool? isSelectedSwitch;

  String? fortyNine;

  String? shamim;

  String? tripsCounter;

  String? id;

  DestinationthreeItemModel copyWith({
    String? circleImage,
    bool? isSelectedSwitch,
    String? fortyNine,
    String? shamim,
    String? tripsCounter,
    String? id,
  }) {
    return DestinationthreeItemModel(
      circleImage: circleImage ?? this.circleImage,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      fortyNine: fortyNine ?? this.fortyNine,
      shamim: shamim ?? this.shamim,
      tripsCounter: tripsCounter ?? this.tripsCounter,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props =>
      [circleImage, isSelectedSwitch, fortyNine, shamim, tripsCounter, id];
}
