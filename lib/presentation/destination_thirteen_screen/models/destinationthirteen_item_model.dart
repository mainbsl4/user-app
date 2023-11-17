import '../../../core/app_export.dart';

/// This class is used in the [destinationthirteen_item_widget] screen.
class DestinationthirteenItemModel {
  DestinationthirteenItemModel({
    this.workBlackdp,
    this.office,
    this.saverThanaStand,
    this.id,
  }) {
    workBlackdp = workBlackdp ?? ImageConstant.imgWorkBlack24dpPrimary;
    office = office ?? "Office";
    saverThanaStand = saverThanaStand ?? "39 Saver thana stand, Dhaka";
    id = id ?? "";
  }

  String? workBlackdp;

  String? office;

  String? saverThanaStand;

  String? id;
}
