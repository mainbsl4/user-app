import '../models/destinationtwelve_item_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class DestinationtwelveItemWidget extends StatelessWidget {
  DestinationtwelveItemWidget(
    this.destinationtwelveItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DestinationtwelveItemModel destinationtwelveItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: Column(
          children: [
            CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              child: CustomImageView(
                imagePath: destinationtwelveItemModelObj?.workBlackdp,
              ),
            ),
            SizedBox(height: 4.v),
            Text(
              destinationtwelveItemModelObj.office!,
              style: CustomTextStyles.bodyMediumSecondaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
