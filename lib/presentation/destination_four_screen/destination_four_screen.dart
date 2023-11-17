import 'bloc/destination_four_bloc.dart';
import 'models/destination_four_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/app_bar/appbar_image.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_checkbox_button.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';

class DestinationFourScreen extends StatelessWidget {
  const DestinationFourScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationFourBloc>(
        create: (context) => DestinationFourBloc(DestinationFourState(
            destinationFourModelObj: DestinationFourModel()))
          ..add(DestinationFourInitialEvent()),
        child: DestinationFourScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 20.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildPickupFeetOne(context),
                      SizedBox(height: 18.v),
                      Divider(color: appTheme.gray10001),
                      SizedBox(height: 13.v),
                      _buildActiveColor(context),
                      SizedBox(height: 18.v),
                      Divider(color: appTheme.gray10001),
                      SizedBox(height: 19.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("msg_trip_date_time".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 6.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgCalendarMonthBlack24dp,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(bottom: 1.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h, top: 3.v),
                                child: Text("msg_10_may_2023_06_30".tr,
                                    style: theme.textTheme.titleMedium))
                          ])),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.center,
                          child: Divider(indent: 19.h, endIndent: 20.h)),
                      SizedBox(height: 16.v),
                      _buildCachedBlackdp(context),
                      SizedBox(height: 19.v),
                      Divider(color: appTheme.gray10001),
                      SizedBox(height: 17.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("lbl_additional".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 8.v),
                      _buildPickupcarOne(context),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.center,
                          child: Divider(indent: 20.h, endIndent: 19.h)),
                      SizedBox(height: 17.v),
                      Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Text("lbl_note".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 8.v),
                      Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgDescriptionBlack24dp,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("lbl_room_furniture".tr,
                                    style: CustomTextStyles.bodyLargeGray800))
                          ])),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildSendTripRequest(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 41.v,
        leadingWidth: 47.h,
        leading: Container(
            margin: EdgeInsets.only(left: 19.h, top: 5.v, bottom: 7.v),
            padding: EdgeInsets.all(6.h),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder14),
            child: AppbarImage(
                imagePath: ImageConstant.imgArrowleft,
                onTap: () {
                  onTapArrowLeft(context);
                })),
        title: AppbarSubtitleOne(
            text: "lbl_trip_details".tr, margin: EdgeInsets.only(left: 21.h)));
  }

  /// Section Widget
  Widget _buildPickupFeetOne(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 26.h, right: 23.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup,
                      height: 23.v,
                      width: 50.h,
                      margin: EdgeInsets.only(top: 8.v, bottom: 11.v)),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(right: 15.h),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("msg_pickup_7_feet_1".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgInfoBlack24dp,
                                              height: 16.adaptSize,
                                              width: 16.adaptSize,
                                              margin: EdgeInsets.only(
                                                  left: 9.h, bottom: 4.v)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgEditBlack24dp,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                              margin: EdgeInsets.only(
                                                  left: 8.h, bottom: 2.v))
                                        ])),
                                SizedBox(height: 3.v),
                                Text("msg_small_quantities".tr,
                                    style: CustomTextStyles
                                        .bodySmallSecondaryContainer_1)
                              ])))
                ])));
  }

  /// Section Widget
  Widget _buildActiveColor(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 4.v, bottom: 28.v),
                      child: Column(children: [
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.h),
                            padding: EdgeInsets.all(1.h),
                            decoration: AppDecoration.outlineSecondaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                            child: Container(
                                height: 10.adaptSize,
                                width: 10.adaptSize,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.primary,
                                    borderRadius: BorderRadius.circular(5.h)))),
                        SizedBox(height: 4.v),
                        SizedBox(
                            height: 85.v,
                            width: 24.h,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                          padding: EdgeInsets.only(right: 10.h),
                                          child: SizedBox(
                                              height: 70.v,
                                              child: VerticalDivider(
                                                  width: 1.h,
                                                  thickness: 1.v,
                                                  color:
                                                      appTheme.blueGray300)))),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgPlaceblack24dp1,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      alignment: Alignment.bottomCenter)
                                ]))
                      ])),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Row(children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 2.v),
                                          child: Text("lbl_pickup_point".tr,
                                              style:
                                                  theme.textTheme.bodyLarge)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEditBlack24dp,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 8.h, bottom: 4.v))
                                    ])),
                                SizedBox(height: 6.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 5.h),
                                    child: Text("msg_biplop_ai_masum".tr,
                                        style: theme.textTheme.titleMedium)),
                                SizedBox(height: 15.v),
                                Divider(),
                                SizedBox(height: 18.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Row(children: [
                                      Text("lbl_drop_off_point".tr,
                                          style: theme.textTheme.bodyLarge),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEditBlack24dp,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 8.h, bottom: 2.v))
                                    ])),
                                SizedBox(height: 5.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text("msg_sonadango_khulna2".tr,
                                        style: theme.textTheme.titleMedium))
                              ])))
                ])));
  }

  /// Section Widget
  Widget _buildCachedBlackdp(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgCachedBlack24dp,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 2.v),
                  child: Text("lbl_round_trip".tr,
                      style: CustomTextStyles.bodyLargeGray800)),
              Spacer(),
              Text("lbl_no".tr, style: theme.textTheme.titleMedium)
            ])));
  }

  /// Section Widget
  Widget _buildPickupcarOne(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 75.h),
        child: BlocSelector<DestinationFourBloc, DestinationFourState, bool?>(
            selector: (state) => state.pickupcarOne,
            builder: (context, pickupcarOne) {
              return CustomCheckboxButton(
                  text: "msg_good_weights_more".tr,
                  value: pickupcarOne,
                  textStyle: CustomTextStyles.bodyLargeGray800,
                  onChange: (value) {
                    context
                        .read<DestinationFourBloc>()
                        .add(ChangeCheckBoxEvent(value: value));
                  });
            }));
  }

  /// Section Widget
  Widget _buildSendTripRequest(BuildContext context) {
    return CustomElevatedButton(
        text: "msg_send_trip_request".tr,
        margin: EdgeInsets.only(left: 20.h, right: 19.h, bottom: 56.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
