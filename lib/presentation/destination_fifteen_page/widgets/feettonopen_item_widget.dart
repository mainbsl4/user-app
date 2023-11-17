import '../models/feettonopen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';

// ignore: must_be_immutable
class FeettonopenItemWidget extends StatelessWidget {
  FeettonopenItemWidget(
    this.feettonopenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FeettonopenItemModel feettonopenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: feettonopenItemModelObj?.feettonOpen,
            height: 23.v,
            width: 50.h,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 249.h,
                  margin: EdgeInsets.only(right: 10.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text(
                          feettonopenItemModelObj.feetTonOpen!,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgInfoBlack24dp,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 8.h,
                          top: 3.v,
                          bottom: 3.v,
                        ),
                      ),
                      Spacer(),
                      Text(
                        feettonopenItemModelObj.bid!,
                        style: CustomTextStyles.titleMediumBlack900,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
                Text(
                  feettonopenItemModelObj.smallQuantities!,
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
