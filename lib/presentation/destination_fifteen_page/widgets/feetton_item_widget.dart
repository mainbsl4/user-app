import '../models/feetton_item_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';

// ignore: must_be_immutable
class FeettonItemWidget extends StatelessWidget {
  FeettonItemWidget(
    this.feettonItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FeettonItemModel feettonItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 9.v,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: feettonItemModelObj?.image,
            height: 23.v,
            width: 50.h,
            margin: EdgeInsets.only(
              top: 10.v,
              bottom: 12.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: Row(
                    children: [
                      Text(
                        feettonItemModelObj.feetTon!,
                        style: theme.textTheme.bodyMedium,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgInfoBlack24dp,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 8.h,
                          top: 2.v,
                          bottom: 3.v,
                        ),
                      ),
                      Spacer(),
                      Text(
                        feettonItemModelObj.bid!,
                        style: CustomTextStyles.titleMediumBlack900,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.v),
                Text(
                  feettonItemModelObj.smallQuantities!,
                  style: CustomTextStyles.bodySmallSecondaryContainer_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
