import '../destination_three_screen/widgets/destinationthree_item_widget.dart';
import 'bloc/destination_three_bloc.dart';
import 'models/destination_three_model.dart';
import 'models/destinationthree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';
import 'package:user_app/widgets/custom_radio_button.dart';

class DestinationThreeScreen extends StatelessWidget {
  const DestinationThreeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationThreeBloc>(
        create: (context) => DestinationThreeBloc(DestinationThreeState(
            destinationThreeModelObj: DestinationThreeModel()))
          ..add(DestinationThreeInitialEvent()),
        child: DestinationThreeScreen());
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
                    padding: EdgeInsets.only(top: 26.v),
                    child: Column(children: [
                      _buildDestinationThree(context),
                      SizedBox(height: 24.v),
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 20.v),
                          decoration: AppDecoration.fillGray10001,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildTripDetails(context),
                                SizedBox(height: 13.v),
                                Divider(),
                                SizedBox(height: 22.v),
                                _buildPickupPoint(context),
                                SizedBox(height: 5.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 53.h),
                                    child: Text("msg_sonadango_khulna2".tr,
                                        style: theme.textTheme.titleMedium)),
                                SizedBox(height: 18.v),
                                Divider(color: appTheme.gray10002),
                                SizedBox(height: 23.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: Text("msg_trip_date_time".tr,
                                        style: theme.textTheme.bodyLarge)),
                                SizedBox(height: 6.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 18.h),
                                    child: Text("msg_10_may_2023_06_30".tr,
                                        style: theme.textTheme.titleMedium)),
                                SizedBox(height: 15.v),
                                Align(
                                    alignment: Alignment.center,
                                    child:
                                        Divider(indent: 20.h, endIndent: 19.h)),
                                SizedBox(height: 19.v),
                                _buildRoundTrip(context),
                                SizedBox(height: 15.v),
                                Divider(color: appTheme.gray10002),
                                SizedBox(height: 20.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 21.h),
                                    child: Text("lbl_additional".tr,
                                        style: theme.textTheme.bodyLarge)),
                                SizedBox(height: 8.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: Text("msg_good_weights_more".tr,
                                        style:
                                            CustomTextStyles.bodyLargeGray800)),
                                SizedBox(height: 15.v),
                                Align(
                                    alignment: Alignment.center,
                                    child:
                                        Divider(indent: 20.h, endIndent: 18.h)),
                                SizedBox(height: 17.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 19.h),
                                    child: Text("lbl_note".tr,
                                        style: theme.textTheme.bodyLarge)),
                                SizedBox(height: 5.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: Text("lbl_room_furniture".tr,
                                        style:
                                            CustomTextStyles.bodyLargeGray800)),
                                SizedBox(height: 21.v),
                                CustomElevatedButton(
                                    text: "lbl_cancel".tr,
                                    margin: EdgeInsets.only(
                                        left: 20.h, right: 19.h),
                                    buttonStyle: CustomButtonStyles.fillGray1,
                                    buttonTextStyle:
                                        CustomTextStyles.titleLargeRedA200,
                                    alignment: Alignment.center),
                                SizedBox(height: 8.v)
                              ]))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 37.v,
        leadingWidth: 47.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowleft,
            margin: EdgeInsets.only(left: 19.h, top: 5.v, bottom: 3.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitleOne(
            text: "lbl_bidding_ongoing".tr,
            margin: EdgeInsets.only(left: 21.h)),
        actions: [
          AppbarSubtitleTwo(
              text: "lbl_00_10_00".tr,
              margin: EdgeInsets.fromLTRB(20.h, 1.v, 20.h, 5.v))
        ]);
  }

  /// Section Widget
  Widget _buildDestinationThree(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: BlocSelector<DestinationThreeBloc, DestinationThreeState,
                DestinationThreeModel?>(
            selector: (state) => state.destinationThreeModelObj,
            builder: (context, destinationThreeModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 20.v);
                  },
                  itemCount: destinationThreeModelObj
                          ?.destinationthreeItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    DestinationthreeItemModel model = destinationThreeModelObj
                            ?.destinationthreeItemList[index] ??
                        DestinationthreeItemModel();
                    return DestinationthreeItemWidget(model,
                        changeSwitch: (value) {
                      context.read<DestinationThreeBloc>().add(
                          DestinationthreeItemEvent(
                              index: index, isSelectedSwitch: value));
                    });
                  });
            }));
  }

  /// Section Widget
  Widget _buildTripDetails(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 21.h, right: 19.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("lbl_trip_details".tr,
                      style: theme.textTheme.titleLarge),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowBackIosBlack24dpGray800,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(bottom: 6.v))
                ])));
  }

  /// Section Widget
  Widget _buildPickupPoint(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 107.v,
            width: 354.h,
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
                  child: BlocSelector<DestinationThreeBloc,
                          DestinationThreeState, String?>(
                      selector: (state) => state.radioGroup,
                      builder: (context, radioGroup) {
                        return Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: CustomRadioButton(
                                text: "lbl_pickup_point".tr,
                                value: "lbl_pickup_point".tr ?? "",
                                groupValue: radioGroup,
                                onChange: (value) {
                                  context.read<DestinationThreeBloc>().add(
                                      ChangeRadioButtonEvent(value: value));
                                }));
                      }))
            ])));
  }

  /// Section Widget
  Widget _buildRoundTrip(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 21.h, right: 19.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 4.v),
                      child: Text("lbl_round_trip".tr,
                          style: CustomTextStyles.bodyLargeGray800)),
                  Padding(
                      padding: EdgeInsets.only(top: 4.v),
                      child:
                          Text("lbl_no".tr, style: theme.textTheme.titleMedium))
                ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
