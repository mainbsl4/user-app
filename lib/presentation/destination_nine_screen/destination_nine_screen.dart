import 'bloc/destination_nine_bloc.dart';
import 'models/destination_nine_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/app_bar/appbar_image.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_drop_down.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';
import 'package:user_app/widgets/custom_icon_button.dart';

class DestinationNineScreen extends StatelessWidget {
  const DestinationNineScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationNineBloc>(
        create: (context) => DestinationNineBloc(DestinationNineState(
            destinationNineModelObj: DestinationNineModel()))
          ..add(DestinationNineInitialEvent()),
        child: DestinationNineScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                height: 767.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topRight, children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          margin: EdgeInsets.only(left: 19.h, top: 61.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.h, vertical: 19.v),
                          decoration: AppDecoration.outlinePrimary1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgGroupBlue900,
                                    height: 60.v,
                                    width: 124.h),
                                SizedBox(height: 17.v),
                                Text("lbl_truck".tr,
                                    style: CustomTextStyles
                                        .titleMediumBluegray90001_1)
                              ]))),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          margin: EdgeInsets.only(top: 61.v, right: 20.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 19.v),
                          decoration: AppDecoration.outlineBluegray300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgGroupBlue90060x122,
                                height: 60.v,
                                width: 122.h),
                            SizedBox(height: 17.v),
                            Text("lbl_car".tr,
                                style:
                                    CustomTextStyles.titleMediumBluegray90001_1)
                          ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(19.h, 222.v, 19.h, 56.v),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildFiftyTwo(context),
                            SizedBox(height: 16.v),
                            _buildRoundTrip(context),
                            SizedBox(height: 16.v),
                            _buildPromoCode(context),
                            Spacer(),
                            CustomElevatedButton(text: "lbl_continue".tr)
                          ]))),
                  Padding(
                      padding: EdgeInsets.only(left: 161.h, top: 47.v),
                      child: CustomIconButton(
                          height: 29.adaptSize,
                          width: 29.adaptSize,
                          padding: EdgeInsets.all(2.h),
                          decoration: IconButtonStyleHelper.fillWhiteA,
                          alignment: Alignment.topLeft,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgCheckCircleFi))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 767.v,
                          width: double.maxFinite,
                          padding: EdgeInsets.only(
                              left: 20.h, top: 126.v, right: 20.h),
                          decoration: AppDecoration.fillIndigo90072,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                imagePath: ImageConstant.img34524874693197,
                                height: 470.v,
                                width: 335.h,
                                radius: BorderRadius.circular(4.h),
                                alignment: Alignment.topCenter),
                            _buildOne(context)
                          ])))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 39.v,
        leadingWidth: 48.h,
        leading: Container(
            margin: EdgeInsets.only(left: 20.h, top: 5.v, bottom: 5.v),
            padding: EdgeInsets.all(6.h),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder14),
            child: AppbarImage(
                imagePath: ImageConstant.imgArrowleft,
                onTap: () {
                  onTapArrowLeft(context);
                })),
        title: AppbarSubtitleOne(
            text: "lbl_vehicles".tr, margin: EdgeInsets.only(left: 21.h)));
  }

  /// Section Widget
  Widget _buildFiftyTwo(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 16.v),
        decoration: AppDecoration.fillGray10001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 11.v),
              decoration: AppDecoration.outlineBlueGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgCalendarmonthblack24dp1,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: BlocSelector<DestinationNineBloc,
                            DestinationNineState, DestinationNineModel?>(
                        selector: (state) => state.destinationNineModelObj,
                        builder: (context, destinationNineModelObj) {
                          return CustomDropDown(
                              width: 115.h,
                              icon: Container(
                                  margin: EdgeInsets.only(left: 6.h),
                                  child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgArrowdropdownblack24dp1,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize)),
                              hintText: "lbl_select_date".tr,
                              items:
                                  destinationNineModelObj?.dropdownItemList ??
                                      [],
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 1.v),
                              onChanged: (value) {
                                context
                                    .read<DestinationNineBloc>()
                                    .add(ChangeDropDownEvent(value: value));
                              });
                        }))
              ])),
          Container(
              padding: EdgeInsets.all(11.h),
              decoration: AppDecoration.outlineBlueGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgScheduleblack24dp1,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: BlocSelector<DestinationNineBloc,
                            DestinationNineState, DestinationNineModel?>(
                        selector: (state) => state.destinationNineModelObj,
                        builder: (context, destinationNineModelObj) {
                          return CustomDropDown(
                              width: 68.h,
                              icon: Container(
                                  margin: EdgeInsets.only(left: 6.h),
                                  child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgArrowdropdownblack24dp1,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize)),
                              hintText: "lbl_time".tr,
                              items:
                                  destinationNineModelObj?.dropdownItemList1 ??
                                      [],
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 1.v),
                              onChanged: (value) {
                                context
                                    .read<DestinationNineBloc>()
                                    .add(ChangeDropDown1Event(value: value));
                              });
                        }))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildRoundTrip(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
        decoration: AppDecoration.fillGray10001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Text("lbl_round_trip".tr,
                  style: theme.textTheme.titleMedium)),
          CustomImageView(
              imagePath: ImageConstant.imgSwitchOnHover,
              height: 20.v,
              width: 40.h,
              margin: EdgeInsets.symmetric(vertical: 2.v))
        ]));
  }

  /// Section Widget
  Widget _buildPromoCode(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.v),
        decoration: AppDecoration.fillGray10001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 9.v),
              child: Text("lbl_promo_code".tr,
                  style: theme.textTheme.titleMedium)),
          Container(
              margin: EdgeInsets.only(right: 4.h),
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 7.v),
              decoration: AppDecoration.fillTeal
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgAddBlack24dp1,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 6.h, top: 3.v),
                    child: Text("lbl_add_promo".tr,
                        style: CustomTextStyles.bodyLargeGray800))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.v),
              decoration: AppDecoration.fillPrimary
                  .copyWith(borderRadius: BorderRadiusStyle.customBorderTL4),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 86.h, bottom: 2.v),
                        child: Text("lbl_1_40".tr,
                            style: CustomTextStyles.notoSansWhiteA700)),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 14.h, top: 19.v, bottom: 19.v),
                        child: Column(children: [
                          Text("lbl_am".tr,
                              style: CustomTextStyles.bodyLargeBluegray300),
                          SizedBox(height: 10.v),
                          Text("lbl_pm".tr,
                              style: CustomTextStyles.bodyLargeWhiteA70017_1)
                        ]))
                  ])),
          SizedBox(height: 33.v),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                  height: 118.v,
                  width: 80.h,
                  margin: EdgeInsets.only(right: 91.h),
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                            height: 7.adaptSize,
                            width: 7.adaptSize,
                            decoration: BoxDecoration(
                                color: theme.colorScheme.primary,
                                borderRadius: BorderRadius.circular(3.h)))),
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle1700,
                        height: 72.v,
                        width: 42.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 3.h, bottom: 3.v)),
                    CustomElevatedButton(
                        height: 47.v,
                        width: 47.h,
                        text: "lbl_1".tr,
                        buttonStyle: CustomButtonStyles.fillPrimaryTL23,
                        buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700,
                        alignment: Alignment.topRight)
                  ])))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
