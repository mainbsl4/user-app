import '../models/destinationfive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/custom_checkbox_button.dart';

// ignore: must_be_immutable
class DestinationfiveItemWidget extends StatelessWidget {
  DestinationfiveItemWidget(
    this.destinationfiveItemModelObj, {
    Key? key,
    this.changeCheckBox,
  }) : super(
          key: key,
        );

  DestinationfiveItemModel destinationfiveItemModelObj;

  Function(bool)? changeCheckBox;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 6.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: CustomCheckboxButton(
                text: "msg_good_weights_more".tr,
                value: destinationfiveItemModelObj.pickupcarOne!,
                onChange: (value) {
                  changeCheckBox?.call(value!);
                },
              ),
            ),
          ),
          Container(
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              left: 64.h,
              top: 2.v,
              bottom: 3.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                2.h,
              ),
              border: Border.all(
                color: appTheme.blueGray300,
                width: 1.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
