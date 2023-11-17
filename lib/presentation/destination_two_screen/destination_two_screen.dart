import 'bloc/destination_two_bloc.dart';
import 'models/destination_two_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/app_bar/appbar_image.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';
import 'package:user_app/widgets/custom_outlined_button.dart';
import 'package:user_app/widgets/custom_radio_button.dart';
import 'package:user_app/widgets/custom_switch.dart';

class DestinationTwoScreen extends StatelessWidget {
  const DestinationTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationTwoBloc>(
        create: (context) => DestinationTwoBloc(
            DestinationTwoState(destinationTwoModelObj: DestinationTwoModel()))
          ..add(DestinationTwoInitialEvent()),
        child: DestinationTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 19.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildContact(context),
                          SizedBox(height: 17.v),
                          Divider(color: appTheme.gray10001),
                          SizedBox(height: 21.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.h),
                              child: _buildPromoCode(context,
                                  promoCode: "lbl_fare".tr,
                                  tk: "lbl_3000_tk2".tr)),
                          SizedBox(height: 17.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.h),
                              child: _buildPromoCode(context,
                                  promoCode: "lbl_promo_code2".tr,
                                  tk: "lbl_100_tk".tr)),
                          SizedBox(height: 17.v),
                          Divider(indent: 17.h, endIndent: 19.h),
                          SizedBox(height: 16.v),
                          _buildTotal(context),
                          SizedBox(height: 19.v),
                          Divider(color: appTheme.gray10001),
                          SizedBox(height: 23.v),
                          _buildPickupPoint(context),
                          SizedBox(height: 5.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 53.h),
                                  child: Text("msg_sonadango_khulna2".tr,
                                      style: theme.textTheme.titleMedium))),
                          SizedBox(height: 18.v),
                          Divider(color: appTheme.gray10001),
                          SizedBox(height: 23.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 19.h),
                                  child: Text("msg_trip_date_time".tr,
                                      style: theme.textTheme.bodyLarge))),
                          SizedBox(height: 6.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 17.h),
                                  child: Text("msg_10_may_2023_06_30".tr,
                                      style: theme.textTheme.titleMedium))),
                          SizedBox(height: 15.v),
                          Divider(indent: 19.h, endIndent: 19.h),
                          SizedBox(height: 17.v),
                          _buildRoundTrip(context),
                          SizedBox(height: 19.v),
                          Divider(color: appTheme.gray10001),
                          SizedBox(height: 20.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Text("lbl_additional".tr,
                                      style: theme.textTheme.bodyLarge))),
                          SizedBox(height: 8.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 19.h),
                                  child: Text("msg_good_weights_more".tr,
                                      style:
                                          CustomTextStyles.bodyLargeGray800))),
                          SizedBox(height: 15.v),
                          Divider(indent: 20.h, endIndent: 19.h),
                          SizedBox(height: 17.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 18.h),
                                  child: Text("lbl_note".tr,
                                      style: theme.textTheme.bodyLarge))),
                          SizedBox(height: 5.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 19.h),
                                  child: Text("lbl_room_furniture".tr,
                                      style:
                                          CustomTextStyles.bodyLargeGray800))),
                          SizedBox(height: 21.v),
                          CustomElevatedButton(
                              text: "lbl_cancel".tr,
                              margin: EdgeInsets.only(left: 20.h, right: 19.h),
                              buttonStyle: CustomButtonStyles.fillGray1,
                              buttonTextStyle:
                                  CustomTextStyles.titleLargeRedA200),
                          SizedBox(height: 16.v),
                          CustomElevatedButton(
                              text: "lbl_pay_now".tr,
                              margin: EdgeInsets.only(left: 20.h, right: 18.h))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 41.v,
        leadingWidth: 46.h,
        leading: Container(
            margin: EdgeInsets.only(left: 18.h, top: 5.v, bottom: 7.v),
            padding: EdgeInsets.all(6.h),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder14),
            child: AppbarImage(
                imagePath: ImageConstant.imgArrowleft,
                onTap: () {
                  onTapArrowLeft(context);
                })),
        title: AppbarSubtitleOne(
            text: "lbl_trip_details".tr, margin: EdgeInsets.only(left: 20.h)));
  }

  /// Section Widget
  Widget _buildContact(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 41.v,
                    width: 32.h,
                    margin: EdgeInsets.only(bottom: 54.v),
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse432x32,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          radius: BorderRadius.circular(16.h),
                          alignment: Alignment.topCenter),
                      BlocSelector<DestinationTwoBloc, DestinationTwoState,
                              bool?>(
                          selector: (state) => state.isSelectedSwitch,
                          builder: (context, isSelectedSwitch) {
                            return CustomSwitch(
                                alignment: Alignment.bottomCenter,
                                value: isSelectedSwitch,
                                onChange: (value) {
                                  context
                                      .read<DestinationTwoBloc>()
                                      .add(ChangeSwitchEvent(value: value));
                                });
                          }),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("lbl_4_5".tr,
                                  style:
                                      CustomTextStyles.bodySmallWhiteA70010_1)))
                    ])),
                Padding(
                    padding: EdgeInsets.only(left: 7.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_shohel_kha".tr,
                              style: CustomTextStyles.bodyLargeBluegray90001),
                          SizedBox(height: 3.v),
                          SizedBox(
                              width: 108.h,
                              child: Text("msg_267_trips_7_feet".tr,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodySmall!
                                      .copyWith(height: 1.45)))
                        ]))
              ]),
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text("lbl_ha_57_1163".tr,
                            style: CustomTextStyles.bodyLargeBluegray90001)),
                    Padding(
                        padding: EdgeInsets.only(left: 17.h),
                        child: Text("lbl_tata_ace".tr,
                            style: theme.textTheme.bodySmall)),
                    SizedBox(height: 21.v),
                    CustomOutlinedButton(
                        height: 31.v,
                        width: 104.h,
                        text: "lbl_contact".tr,
                        leftIcon: Container(
                            margin: EdgeInsets.only(right: 8.h),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgCallblack24dp1,
                                height: 20.adaptSize,
                                width: 20.adaptSize)),
                        buttonStyle: CustomButtonStyles.outlineBlueGrayTL4)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildTotal(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_total".tr, style: CustomTextStyles.titleLargeBluegray90001),
          Text("lbl_2900_tk".tr,
              style: CustomTextStyles.titleLargeBluegray90001)
        ]));
  }

  /// Section Widget
  Widget _buildPickupPoint(BuildContext context) {
    return SizedBox(
        height: 107.v,
        width: 334.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: SizedBox(
                      height: 85.v,
                      child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          color: appTheme.blueGray300,
                          endIndent: 15.h)))),
          CustomImageView(
              imagePath: ImageConstant.imgPlaceblack24dp1,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.bottomLeft),
          Align(
              alignment: Alignment.bottomRight,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text("msg_biplop_ai_masum".tr,
                            style: theme.textTheme.titleMedium)),
                    SizedBox(height: 15.v),
                    Divider(),
                    SizedBox(height: 19.v),
                    Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text("lbl_drop_off_point".tr,
                            style: theme.textTheme.bodyLarge))
                  ])),
          Align(
              alignment: Alignment.topLeft,
              child: BlocSelector<DestinationTwoBloc, DestinationTwoState,
                      String?>(
                  selector: (state) => state.radioGroup,
                  builder: (context, radioGroup) {
                    return Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: CustomRadioButton(
                            text: "lbl_pickup_point".tr,
                            value: "lbl_pickup_point".tr ?? "",
                            groupValue: radioGroup,
                            onChange: (value) {
                              context
                                  .read<DestinationTwoBloc>()
                                  .add(ChangeRadioButtonEvent(value: value));
                            }));
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildRoundTrip(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text("lbl_round_trip".tr,
                  style: CustomTextStyles.bodyLargeGray800)),
          Text("lbl_no".tr, style: theme.textTheme.titleMedium)
        ]));
  }

  /// Common widget
  Widget _buildPromoCode(
    BuildContext context, {
    required String promoCode,
    required String tk,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(promoCode,
          style: CustomTextStyles.bodyLargeGray800
              .copyWith(color: appTheme.gray800)),
      Text(tk,
          style: CustomTextStyles.bodyLargeGray800
              .copyWith(color: appTheme.gray800))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
