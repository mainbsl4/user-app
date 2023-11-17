import '../../../core/app_export.dart';

/// This class is used in the [feetton_item_widget] screen.
class FeettonItemModel {
  FeettonItemModel({
    this.image,
    this.feetTon,
    this.bid,
    this.smallQuantities,
    this.id,
  }) {
    image = image ?? ImageConstant.imgGroup;
    feetTon = feetTon ?? "14 feet 3.5 ton (Open)";
    bid = bid ?? "BID";
    smallQuantities =
        smallQuantities ?? "Small quantities of good, furniture, garment...";
    id = id ?? "";
  }

  String? image;

  String? feetTon;

  String? bid;

  String? smallQuantities;

  String? id;
}
