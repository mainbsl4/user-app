import 'bloc/otp_one_bloc.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class OtpOneDraweritem extends StatelessWidget {
  const OtpOneDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Drawer(
      child: Container(
        width: 334.h,
        decoration: AppDecoration.fillWhiteA,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildEightyTwo(context),
            SizedBox(height: 32.v),
            Padding(
              padding: EdgeInsets.only(left: 22.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath:
                        ImageConstant.imgPersonBlack24dpSecondarycontainer,
                    height: 25.adaptSize,
                    width: 25.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "lbl_profile".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 34.v),
            Padding(
              padding: EdgeInsets.only(left: 22.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPasswordCode1Primary,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(bottom: 3.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_change_password".tr,
                      style: CustomTextStyles.bodyLargePrimary,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 33.v),
            Padding(
              padding: EdgeInsets.only(left: 22.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgHeadset,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17.h),
                    child: Text(
                      "lbl_helpline".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 31.v),
            Padding(
              padding: EdgeInsets.only(left: 22.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLogout1,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17.h),
                    child: Text(
                      "lbl_logout".tr,
                      style: CustomTextStyles.bodyLargeLato,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 31.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyTwo(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 122.v,
            width: 334.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 72.v,
                    width: 334.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse1,
                  height: 79.adaptSize,
                  width: 79.adaptSize,
                  radius: BorderRadius.circular(
                    39.h,
                  ),
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 10.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup4393,
                  height: 79.v,
                  width: 80.h,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 10.v),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 22.v,
                    width: 51.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 21.v,
                            width: 51.h,
                            decoration: BoxDecoration(
                              color: appTheme.orange300,
                              borderRadius: BorderRadius.circular(
                                10.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "lbl_4_9".tr,
                                style: CustomTextStyles.bodyMediumWhiteA700_1,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgGradeBlack24dp,
                                height: 15.adaptSize,
                                width: 15.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 3.v,
                                  bottom: 2.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            "msg_md_shamim_hossen2".tr,
            style: CustomTextStyles.titleMediumBluegray90001,
          ),
          SizedBox(height: 4.v),
          Text(
            "msg_123_vehicle_rental".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }
}
