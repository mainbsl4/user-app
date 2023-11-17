import '../models/destinationsix_item_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class DestinationsixItemWidget extends StatelessWidget {
  DestinationsixItemWidget(
    this.destinationsixItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DestinationsixItemModel destinationsixItemModelObj;

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
                imagePath: destinationsixItemModelObj?.workBlackdp,
              ),
            ),
            SizedBox(height: 4.v),
            Text(
              destinationsixItemModelObj.office!,
              style: CustomTextStyles.bodyMediumSecondaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
