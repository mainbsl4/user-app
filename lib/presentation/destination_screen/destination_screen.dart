import 'bloc/destination_bloc.dart';
import 'models/destination_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_icon_button.dart';
import 'package:user_app/widgets/custom_text_form_field.dart';

class DestinationScreen extends StatelessWidget {
  const DestinationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationBloc>(
        create: (context) => DestinationBloc(
            DestinationState(destinationModelObj: DestinationModel()))
          ..add(DestinationInitialEvent()),
        child: DestinationScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 22.v),
                child: Column(children: [
                  _buildFrameTwo(context),
                  SizedBox(height: 20.v),
                  Divider(color: appTheme.gray10002),
                  SizedBox(height: 20.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Row(children: [
                            CustomIconButton(
                                height: 32.adaptSize,
                                width: 32.adaptSize,
                                padding: EdgeInsets.all(6.h),
                                decoration: IconButtonStyleHelper.fillGrayTL16,
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgPlaceBlack24dp)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 6.v, bottom: 3.v),
                                child: Text("msg_biplop_ai_masum".tr,
                                    style: CustomTextStyles.bodyLargeGray800))
                          ]))),
                  SizedBox(height: 16.v),
                  Divider(indent: 20.h, endIndent: 19.h),
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Row(children: [
                            CustomIconButton(
                                height: 32.adaptSize,
                                width: 32.adaptSize,
                                padding: EdgeInsets.all(6.h),
                                decoration: IconButtonStyleHelper.fillGrayTL16,
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgPlaceBlack24dp)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 6.v, bottom: 3.v),
                                child: Text("msg_sonadango_khulna".tr,
                                    style: CustomTextStyles.bodyLargeGray800))
                          ]))),
                  SizedBox(height: 16.v),
                  Divider(indent: 19.h, endIndent: 20.h),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 37.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowleft,
            margin: EdgeInsets.only(left: 20.h, top: 5.v, bottom: 3.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitleOne(
            text: "lbl_location".tr, margin: EdgeInsets.only(left: 21.h)),
        actions: [
          AppbarSubtitle(
              text: "lbl_save".tr,
              margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 4.v))
        ]);
  }

  /// Section Widget
  Widget _buildFrameTwo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15.h, right: 20.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 16.v, bottom: 13.v),
              child: Column(children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.h),
                    padding: EdgeInsets.all(1.h),
                    decoration: AppDecoration.outlineSecondaryContainer
                        .copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                    child: Container(
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(5.h)))),
                SizedBox(height: 1.v),
                SizedBox(
                    height: 66.v,
                    width: 24.h,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 10.h),
                              child: SizedBox(
                                  height: 50.v,
                                  child: VerticalDivider(
                                      width: 1.h,
                                      thickness: 1.v,
                                      color: appTheme.blueGray300)))),
                      CustomImageView(
                          imagePath: ImageConstant.imgPlaceblack24dp1,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          alignment: Alignment.bottomCenter)
                    ]))
              ])),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(children: [
                    BlocSelector<DestinationBloc, DestinationState,
                            TextEditingController?>(
                        selector: (state) => state.frameTwoController,
                        builder: (context, frameTwoController) {
                          return CustomTextFormField(
                              controller: frameTwoController,
                              hintText: "msg_biplop_ai_masum".tr,
                              hintStyle: CustomTextStyles.bodyLargeGray800,
                              borderDecoration:
                                  TextFormFieldStyleHelper.outlineBlueGray,
                              filled: true,
                              fillColor: appTheme.gray10001);
                        }),
                    SizedBox(height: 16.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Expanded(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: BlocSelector<DestinationBloc,
                                      DestinationState, TextEditingController?>(
                                  selector: (state) => state.searchController,
                                  builder: (context, searchController) {
                                    return CustomTextFormField(
                                        controller: searchController,
                                        hintText: "msg_search_destination".tr,
                                        hintStyle: theme.textTheme.bodyLarge!,
                                        textInputAction: TextInputAction.done,
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineBlueGray,
                                        filled: true,
                                        fillColor: appTheme.gray10001);
                                  }))),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: CustomIconButton(
                              height: 48.v,
                              width: 45.h,
                              padding: EdgeInsets.all(10.h),
                              decoration: IconButtonStyleHelper.outlinePrimary,
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgAddBlack24dp1Primary)))
                    ])
                  ])))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
