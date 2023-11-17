import '../models/destinationnineteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';
import 'package:user_app/widgets/custom_radio_button.dart';

// ignore: must_be_immutable
class DestinationnineteenItemWidget extends StatelessWidget {
  DestinationnineteenItemWidget(
    this.destinationnineteenItemModelObj, {
    Key? key,
    this.onTapRadio,
  }) : super(
          key: key,
        );

  DestinationnineteenItemModel destinationnineteenItemModelObj;

  Function(String)? onTapRadio;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillGray10001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              destinationnineteenItemModelObj.month!,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              right: 1.h,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLocalShippingBlack24dp,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    destinationnineteenItemModelObj.fileTonOpen!,
                    style: CustomTextStyles.bodyMediumPrimary14,
                  ),
                ),
                Spacer(),
                Text(
                  destinationnineteenItemModelObj.tipnyFive!,
                  style: CustomTextStyles.bodyMediumBluegray90001,
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          Container(
            height: 62.v,
            width: 235.h,
            margin: EdgeInsets.only(left: 1.h),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: SizedBox(
                      height: 39.v,
                      child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                        color: appTheme.blueGray300,
                        indent: 17.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPlaceblack24dp1,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.bottomLeft,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: CustomRadioButton(
                    text: "msg_biplop_ai_masum".tr,
                    value: "msg_biplop_ai_masum".tr ?? "",
                    groupValue: destinationnineteenItemModelObj.radioGroup!,
                    textStyle: theme.textTheme.titleMedium,
                    onChange: (value) {
                      onTapRadio?.call(value);
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.h),
                    child: Text(
                      destinationnineteenItemModelObj.sonadangoKhulna!,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgScheduleBlack24dp,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 10.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    destinationnineteenItemModelObj.time!,
                    style: CustomTextStyles.bodyMediumPrimary14,
                  ),
                ),
                CustomElevatedButton(
                  height: 40.v,
                  width: 116.h,
                  text: "lbl_cancelled".tr,
                  buttonStyle: CustomButtonStyles.fillRedA,
                  buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
