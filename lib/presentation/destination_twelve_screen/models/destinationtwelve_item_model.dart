import '../../../core/app_export.dart';

/// This class is used in the [destinationtwelve_item_widget] screen.
class DestinationtwelveItemModel {
  DestinationtwelveItemModel({
    this.workBlackdp,
    this.office,
    this.id,
  }) {
    workBlackdp = workBlackdp ?? ImageConstant.imgWorkBlack24dp;
    office = office ?? "Office";
    id = id ?? "";
  }

  String? workBlackdp;

  String? office;

  String? id;
}
