import '../../../core/app_export.dart';

/// This class is used in the [feettonopen_item_widget] screen.
class FeettonopenItemModel {
  FeettonopenItemModel({
    this.feettonOpen,
    this.feetTonOpen,
    this.bid,
    this.smallQuantities,
    this.id,
  }) {
    feettonOpen = feettonOpen ?? ImageConstant.imgGroup;
    feetTonOpen = feetTonOpen ?? "7 feet 1 ton (Open)";
    bid = bid ?? "BID";
    smallQuantities =
        smallQuantities ?? "Small quantities of good, furniture, garment...";
    id = id ?? "";
  }

  String? feettonOpen;

  String? feetTonOpen;

  String? bid;

  String? smallQuantities;

  String? id;
}
