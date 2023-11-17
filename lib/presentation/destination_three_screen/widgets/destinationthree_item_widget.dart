import '../models/destinationthree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/custom_outlined_button.dart';
import 'package:user_app/widgets/custom_switch.dart';

// ignore: must_be_immutable
class DestinationthreeItemWidget extends StatelessWidget {
  DestinationthreeItemWidget(
    this.destinationthreeItemModelObj, {
    Key? key,
    this.changeSwitch,
  }) : super(
          key: key,
        );

  DestinationthreeItemModel destinationthreeItemModelObj;

  Function(bool)? changeSwitch;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 101.h,
            margin: EdgeInsets.only(top: 1.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 41.v,
                  width: 32.h,
                  margin: EdgeInsets.only(bottom: 3.v),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: destinationthreeItemModelObj?.circleImage,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        radius: BorderRadius.circular(
                          16.h,
                        ),
                        alignment: Alignment.topCenter,
                      ),
                      CustomSwitch(
                        alignment: Alignment.bottomCenter,
                        value: destinationthreeItemModelObj.isSelectedSwitch!,
                        onChange: (value) {
                          changeSwitch?.call(value);
                        },
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            destinationthreeItemModelObj.fortyNine!,
                            style: CustomTextStyles.bodySmallWhiteA70010_1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        destinationthreeItemModelObj.shamim!,
                        style: CustomTextStyles.bodyLargeBluegray90001,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      destinationthreeItemModelObj.tripsCounter!,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
          CustomOutlinedButton(
            width: 110.h,
            text: "lbl_3500tk".tr,
            margin: EdgeInsets.only(
              top: 1.v,
              bottom: 2.v,
            ),
            buttonTextStyle: CustomTextStyles.titleLargeSemiBold,
          ),
        ],
      ),
    );
  }
}
