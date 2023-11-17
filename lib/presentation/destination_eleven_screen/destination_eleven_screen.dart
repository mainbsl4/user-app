import 'bloc/destination_eleven_bloc.dart';
import 'models/destination_eleven_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/app_bar/appbar_image.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_drop_down.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';

class DestinationElevenScreen extends StatelessWidget {
  const DestinationElevenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationElevenBloc>(
        create: (context) => DestinationElevenBloc(DestinationElevenState(
            destinationElevenModelObj: DestinationElevenModel()))
          ..add(DestinationElevenInitialEvent()),
        child: DestinationElevenScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildArrowLeft(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.h, vertical: 20.v),
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("lbl_select_vehicles".tr,
                                style:
                                    CustomTextStyles.titleLargeBluegray90001)),
                        SizedBox(height: 19.v),
                        _buildTruck(context),
                        SizedBox(height: 20.v),
                        _buildSixtyTwo(context),
                        SizedBox(height: 16.v),
                        _buildRoundTrip(context),
                        SizedBox(height: 16.v),
                        _buildAddPromo(context),
                        SizedBox(height: 5.v)
                      ]))
                ])),
            bottomNavigationBar: _buildContinue(context)));
  }

  /// Section Widget
  Widget _buildArrowLeft(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5.v),
        decoration: AppDecoration.fillWhiteA,
        child: CustomAppBar(
            leadingWidth: 48.h,
            leading: Container(
                margin: EdgeInsets.only(left: 20.h),
                padding: EdgeInsets.all(6.h),
                decoration: AppDecoration.fillGray
                    .copyWith(borderRadius: BorderRadiusStyle.circleBorder14),
                child: AppbarImage(
                    imagePath: ImageConstant.imgArrowleft,
                    onTap: () {
                      onTapArrowLeft(context);
                    })),
            title: AppbarSubtitleOne(
                text: "lbl_vehicles".tr, margin: EdgeInsets.only(left: 21.h))));
  }

  /// Section Widget
  Widget _buildTruck(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: Container(
              margin: EdgeInsets.only(right: 9.h),
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 19.v),
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
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
                        style: CustomTextStyles.titleMediumWhiteA700)
                  ]))),
      Expanded(
          child: Container(
              margin: EdgeInsets.only(left: 9.h),
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v),
              decoration: AppDecoration.outlineBluegray300
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgGroupBlue90060x122,
                    height: 60.v,
                    width: 122.h),
                SizedBox(height: 17.v),
                Text("lbl_car".tr,
                    style: CustomTextStyles.titleMediumBluegray90001_1)
              ])))
    ]);
  }

  /// Section Widget
  Widget _buildSixtyTwo(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 16.v),
        decoration: AppDecoration.fillGray10001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          BlocSelector<DestinationElevenBloc, DestinationElevenState,
                  DestinationElevenModel?>(
              selector: (state) => state.destinationElevenModelObj,
              builder: (context, destinationElevenModelObj) {
                return CustomDropDown(
                    width: 160.h,
                    icon: Container(
                        margin: EdgeInsets.fromLTRB(6.h, 12.v, 3.h, 12.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgArrowdropdownblack24dp1,
                            height: 24.adaptSize,
                            width: 24.adaptSize)),
                    hintText: "lbl_select_date".tr,
                    items: destinationElevenModelObj?.dropdownItemList ?? [],
                    prefix: Container(
                        margin: EdgeInsets.fromLTRB(12.h, 12.v, 6.h, 12.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgCalendarmonthblack24dp1,
                            height: 24.adaptSize,
                            width: 24.adaptSize)),
                    prefixConstraints: BoxConstraints(maxHeight: 48.v),
                    onChanged: (value) {
                      context
                          .read<DestinationElevenBloc>()
                          .add(ChangeDropDownEvent(value: value));
                    });
              }),
          BlocSelector<DestinationElevenBloc, DestinationElevenState,
                  DestinationElevenModel?>(
              selector: (state) => state.destinationElevenModelObj,
              builder: (context, destinationElevenModelObj) {
                return CustomDropDown(
                    width: 129.h,
                    icon: Container(
                        margin: EdgeInsets.fromLTRB(6.h, 12.v, 19.h, 12.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgArrowdropdownblack24dp1,
                            height: 24.adaptSize,
                            width: 24.adaptSize)),
                    hintText: "lbl_time".tr,
                    items: destinationElevenModelObj?.dropdownItemList1 ?? [],
                    prefix: Container(
                        margin: EdgeInsets.fromLTRB(12.h, 12.v, 6.h, 12.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgScheduleblack24dp1,
                            height: 24.adaptSize,
                            width: 24.adaptSize)),
                    prefixConstraints: BoxConstraints(maxHeight: 48.v),
                    onChanged: (value) {
                      context
                          .read<DestinationElevenBloc>()
                          .add(ChangeDropDown1Event(value: value));
                    });
              })
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
  Widget _buildAddPromo(BuildContext context) {
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
          CustomElevatedButton(
              height: 40.v,
              width: 139.h,
              text: "lbl_add_promo".tr,
              margin: EdgeInsets.only(right: 4.h),
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 6.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgAddBlack24dp1,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              buttonStyle: CustomButtonStyles.fillGray,
              buttonTextStyle: CustomTextStyles.bodyLargeGray800)
        ]));
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_continue".tr,
        margin: EdgeInsets.only(left: 20.h, right: 19.h, bottom: 56.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
