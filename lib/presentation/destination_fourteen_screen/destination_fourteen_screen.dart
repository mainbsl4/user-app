import '../destination_fourteen_screen/widgets/destinationfourteen_item_widget.dart';
import 'bloc/destination_fourteen_bloc.dart';
import 'models/destination_fourteen_model.dart';
import 'models/destinationfourteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';

class DestinationFourteenScreen extends StatelessWidget {
  const DestinationFourteenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationFourteenBloc>(
        create: (context) => DestinationFourteenBloc(DestinationFourteenState(
            destinationFourteenModelObj: DestinationFourteenModel()))
          ..add(DestinationFourteenInitialEvent()),
        child: DestinationFourteenScreen());
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
                  SizedBox(height: 24.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(right: 1.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 18.h),
                                        child: Text("msg_assigning_trucking".tr,
                                            style: CustomTextStyles
                                                .titleLargePrimary)),
                                    SizedBox(height: 3.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 18.h),
                                        child: Text(
                                            "msg_a_truck_be_assigned".tr,
                                            style: CustomTextStyles
                                                .bodyMediumSecondaryContainer)),
                                    SizedBox(height: 15.v),
                                    _buildLine(context),
                                    SizedBox(height: 24.v),
                                    _buildDestinationFourteen(context),
                                    SizedBox(height: 373.v),
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 17.v),
                                        decoration: AppDecoration.fillGray10001,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              _buildTripDetails(context),
                                              SizedBox(height: 25.v),
                                              _buildLine1(context),
                                              SizedBox(height: 20.v),
                                              Divider(
                                                  color: appTheme.gray10001),
                                              SizedBox(height: 13.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 22.h),
                                                  child: Row(children: [
                                                    Container(
                                                        margin:
                                                            EdgeInsets.symmetric(
                                                                vertical: 4.v),
                                                        padding:
                                                            EdgeInsets.all(1.h),
                                                        decoration: AppDecoration
                                                            .outlineSecondaryContainer
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder10),
                                                        child: Container(
                                                            height:
                                                                10.adaptSize,
                                                            width: 10.adaptSize,
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.h)))),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 16.h),
                                                        child: Text(
                                                            "lbl_pickup_point"
                                                                .tr,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEditBlack24dp,
                                                        height: 20.adaptSize,
                                                        width: 20.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            left: 8.h,
                                                            bottom: 4.v))
                                                  ])),
                                              _buildVectorFive(context),
                                              SizedBox(height: 19.v),
                                              Divider(
                                                  color: appTheme.gray10001),
                                              SizedBox(height: 20.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.h),
                                                  child: Text(
                                                      "msg_trip_date_time".tr,
                                                      style: theme.textTheme
                                                          .bodyLarge)),
                                              SizedBox(height: 4.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 16.h),
                                                  child: Text(
                                                      "msg_10_may_2023_06_30"
                                                          .tr,
                                                      style: theme.textTheme
                                                          .titleMedium)),
                                              SizedBox(height: 16.v),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Divider(
                                                      indent: 18.h,
                                                      endIndent: 19.h)),
                                              SizedBox(height: 16.v),
                                              _buildRoundTrip(context),
                                              SizedBox(height: 20.v),
                                              Divider(
                                                  color: appTheme.gray10001),
                                              SizedBox(height: 19.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 19.h),
                                                  child: Text(
                                                      "lbl_additional".tr,
                                                      style: theme.textTheme
                                                          .bodyLarge)),
                                              SizedBox(height: 4.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.h),
                                                  child: Text(
                                                      "msg_good_weights_more"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeGray800)),
                                              SizedBox(height: 16.v),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Divider(
                                                      indent: 18.h,
                                                      endIndent: 19.h)),
                                              SizedBox(height: 16.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 17.h),
                                                  child: Text("lbl_note".tr,
                                                      style: theme.textTheme
                                                          .bodyLarge)),
                                              SizedBox(height: 3.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.h),
                                                  child: Text(
                                                      "lbl_room_furniture".tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeGray800)),
                                              SizedBox(height: 37.v),
                                              CustomElevatedButton(
                                                  text: "msg_send_trip_request"
                                                      .tr,
                                                  margin: EdgeInsets.only(
                                                      left: 18.h, right: 19.h),
                                                  alignment: Alignment.center),
                                              SizedBox(height: 38.v)
                                            ]))
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildArrowLeft(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 1.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 2.v),
          CustomAppBar(
              height: 34.v,
              leadingWidth: 47.h,
              leading: AppbarLeadingIconbutton(
                  imagePath: ImageConstant.imgArrowleft,
                  margin: EdgeInsets.only(left: 19.h, top: 3.v, bottom: 2.v),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              title: AppbarSubtitleOne(
                  text: "lbl_bidding_ongoing".tr,
                  margin: EdgeInsets.only(left: 21.h)),
              actions: [
                AppbarSubtitleTwo(
                    text: "lbl_00_10_00".tr,
                    margin:
                        EdgeInsets.only(left: 20.h, right: 20.h, bottom: 4.v))
              ])
        ]));
  }

  /// Section Widget
  Widget _buildLine(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 4.v,
            width: 335.h,
            child: Stack(alignment: Alignment.centerLeft, children: [
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      width: 335.h,
                      child: Divider(color: appTheme.blueGray100))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                      width: 140.h,
                      child: Divider(
                          color: theme.colorScheme.primary, indent: 54.h)))
            ])));
  }

  /// Section Widget
  Widget _buildDestinationFourteen(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 20.h, right: 18.h),
            child: BlocSelector<DestinationFourteenBloc,
                    DestinationFourteenState, DestinationFourteenModel?>(
                selector: (state) => state.destinationFourteenModelObj,
                builder: (context, destinationFourteenModelObj) {
                  return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 20.v);
                      },
                      itemCount: destinationFourteenModelObj
                              ?.destinationfourteenItemList.length ??
                          0,
                      itemBuilder: (context, index) {
                        DestinationfourteenItemModel model =
                            destinationFourteenModelObj
                                    ?.destinationfourteenItemList[index] ??
                                DestinationfourteenItemModel();
                        return DestinationfourteenItemWidget(model,
                            changeSwitch: (value) {
                          context.read<DestinationFourteenBloc>().add(
                              DestinationfourteenItemEvent(
                                  index: index, isSelectedSwitch: value));
                        });
                      });
                })));
  }

  /// Section Widget
  Widget _buildTripDetails(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("lbl_trip_details".tr,
                      style: theme.textTheme.titleLarge),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowBackIosBlack24dp,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(bottom: 6.v))
                ])));
  }

  /// Section Widget
  Widget _buildLine1(BuildContext context) {
    return SizedBox(
        height: 44.v,
        width: 373.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(width: 373.h, child: Divider())),
          CustomImageView(
              imagePath: ImageConstant.imgGroup,
              height: 23.v,
              width: 50.h,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 24.h)),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 23.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text("msg_pickup_7_feet_1".tr,
                              style: theme.textTheme.titleMedium),
                          CustomImageView(
                              imagePath: ImageConstant.imgInfoBlack24dp,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 8.h, top: 4.v, bottom: 4.v)),
                          CustomImageView(
                              imagePath: ImageConstant.imgEditBlack24dp,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              margin: EdgeInsets.only(left: 8.h))
                        ]),
                        SizedBox(height: 3.v),
                        Text("msg_small_quantities".tr,
                            style:
                                CustomTextStyles.bodySmallSecondaryContainer_1)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildVectorFive(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 18.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              height: 85.v,
              width: 23.h,
              margin: EdgeInsets.only(bottom: 27.v),
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 10.h),
                        child: SizedBox(
                            height: 70.v,
                            child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                                color: appTheme.blueGray300)))),
                CustomImageView(
                    imagePath: ImageConstant.imgPlaceblack24dp1,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.bottomCenter)
              ])),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 4.h, top: 4.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("msg_biplop_ai_masum".tr,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleMedium)),
                        SizedBox(height: 16.v),
                        Divider(),
                        SizedBox(height: 16.v),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Row(children: [
                              Text("lbl_drop_off_point".tr,
                                  style: theme.textTheme.bodyLarge),
                              CustomImageView(
                                  imagePath: ImageConstant.imgEditBlack24dp,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(left: 8.h))
                            ])),
                        SizedBox(height: 3.v),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("msg_sonadango_khulna2".tr,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleMedium))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildRoundTrip(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("lbl_round_trip".tr,
                      style: CustomTextStyles.bodyLargeGray800),
                  Text("lbl_no".tr, style: theme.textTheme.titleMedium)
                ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
