import 'bloc/destination_one_bloc.dart';
import 'models/destination_one_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';
import 'package:user_app/widgets/custom_outlined_button.dart';
import 'package:user_app/widgets/custom_switch.dart';

class DestinationOneScreen extends StatelessWidget {
  const DestinationOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationOneBloc>(
        create: (context) => DestinationOneBloc(
            DestinationOneState(destinationOneModelObj: DestinationOneModel()))
          ..add(DestinationOneInitialEvent()),
        child: DestinationOneScreen());
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
                          horizontal: 19.h, vertical: 24.v),
                      child: Column(children: [
                        _buildTwentySeven(context),
                        SizedBox(height: 20.v),
                        _buildTwentySix(context),
                        SizedBox(height: 5.v)
                      ]))
                ])),
            bottomNavigationBar: _buildConfirm(context)));
  }

  /// Section Widget
  Widget _buildArrowLeft(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 1.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 1.v),
          CustomAppBar(
              height: 34.v,
              leadingWidth: 46.h,
              leading: AppbarLeadingIconbutton(
                  imagePath: ImageConstant.imgArrowleft,
                  margin: EdgeInsets.only(left: 18.h, top: 3.v, bottom: 2.v),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              title: AppbarSubtitleOne(
                  text: "lbl_bidding_ongoing".tr,
                  margin: EdgeInsets.only(left: 20.h)),
              actions: [
                AppbarSubtitleTwo(
                    text: "lbl_00_10_00".tr,
                    margin:
                        EdgeInsets.only(left: 21.h, right: 21.h, bottom: 4.v))
              ])
        ]));
  }

  /// Section Widget
  Widget _buildTwentySeven(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
        decoration: AppDecoration.outlineBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              width: 101.h,
              margin: EdgeInsets.only(top: 1.v),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 41.v,
                        width: 32.h,
                        margin: EdgeInsets.only(bottom: 3.v),
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse41,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              radius: BorderRadius.circular(16.h),
                              alignment: Alignment.topCenter),
                          BlocSelector<DestinationOneBloc, DestinationOneState,
                                  bool?>(
                              selector: (state) => state.isSelectedSwitch,
                              builder: (context, isSelectedSwitch) {
                                return CustomSwitch(
                                    alignment: Alignment.bottomCenter,
                                    value: isSelectedSwitch,
                                    onChange: (value) {
                                      context
                                          .read<DestinationOneBloc>()
                                          .add(ChangeSwitchEvent(value: value));
                                    });
                              }),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text("lbl_4_9".tr,
                                      style: CustomTextStyles
                                          .bodySmallWhiteA70010_1)))
                        ])),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Text("lbl_shamim".tr,
                                  style:
                                      CustomTextStyles.bodyLargeBluegray90001)),
                          SizedBox(height: 4.v),
                          Text("lbl_1267_trips".tr,
                              style: theme.textTheme.bodySmall)
                        ])
                  ])),
          CustomOutlinedButton(
              width: 110.h,
              text: "lbl_3500tk".tr,
              margin: EdgeInsets.only(top: 1.v, bottom: 2.v),
              buttonTextStyle: CustomTextStyles.titleLargeSemiBold)
        ]));
  }

  /// Section Widget
  Widget _buildTwentySix(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
        decoration: AppDecoration.outlineBluegray3001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              width: 124.h,
              margin: EdgeInsets.only(top: 1.v),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 41.v,
                        width: 32.h,
                        margin: EdgeInsets.only(bottom: 3.v),
                        child: Stack(alignment: Alignment.topCenter, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse41,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              radius: BorderRadius.circular(16.h),
                              alignment: Alignment.topCenter),
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse432x32,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              radius: BorderRadius.circular(16.h),
                              alignment: Alignment.topCenter),
                          BlocSelector<DestinationOneBloc, DestinationOneState,
                                  bool?>(
                              selector: (state) => state.isSelectedSwitch1,
                              builder: (context, isSelectedSwitch1) {
                                return CustomSwitch(
                                    alignment: Alignment.bottomCenter,
                                    value: isSelectedSwitch1,
                                    onChange: (value) {
                                      context.read<DestinationOneBloc>().add(
                                          ChangeSwitch1Event(value: value));
                                    });
                              }),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text("lbl_4_5".tr,
                                      style: CustomTextStyles
                                          .bodySmallWhiteA70010_1)))
                        ])),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_shohel_kha".tr,
                              style: CustomTextStyles.bodyLargeWhiteA700_1),
                          SizedBox(height: 4.v),
                          Text("lbl_267_trips".tr,
                              style: CustomTextStyles.bodySmallGray10001)
                        ])
                  ])),
          CustomOutlinedButton(
              width: 110.h,
              text: "lbl_3500tk".tr,
              margin: EdgeInsets.only(top: 1.v, bottom: 2.v),
              buttonTextStyle: CustomTextStyles.titleLargePrimarySemiBold)
        ]));
  }

  /// Section Widget
  Widget _buildConfirm(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_confirm".tr,
        margin: EdgeInsets.only(left: 20.h, right: 19.h, bottom: 56.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
