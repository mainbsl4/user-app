import '../models/destinationthirteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class DestinationthirteenItemWidget extends StatelessWidget {
  DestinationthirteenItemWidget(
    this.destinationthirteenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DestinationthirteenItemModel destinationthirteenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillIndigo5002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(11.h),
              decoration: IconButtonStyleHelper.fillIndigo,
              child: CustomImageView(
                imagePath: destinationthirteenItemModelObj?.workBlackdp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 22.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  destinationthirteenItemModelObj.office!,
                  style: CustomTextStyles.titleLargeSecondaryContainer,
                ),
                SizedBox(height: 2.v),
                Text(
                  destinationthirteenItemModelObj.saverThanaStand!,
                  style: CustomTextStyles.bodyMediumBluegray300,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
