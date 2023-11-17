import 'bloc/destination_add_bloc.dart';
import 'models/destination_add_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';
import 'package:user_app/widgets/custom_icon_button.dart';
import 'package:user_app/widgets/custom_outlined_button.dart';
import 'package:user_app/widgets/custom_text_form_field.dart';

class DestinationAddScreen extends StatelessWidget {
  const DestinationAddScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationAddBloc>(
        create: (context) => DestinationAddBloc(
            DestinationAddState(destinationAddModelObj: DestinationAddModel()))
          ..add(DestinationAddInitialEvent()),
        child: DestinationAddScreen());
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
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 16.v, bottom: 407.v),
                          child: Column(children: [
                            SizedBox(
                                height: 129.v,
                                width: 16.h,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: SizedBox(
                                              height: 114.v,
                                              child: VerticalDivider(
                                                  width: 1.h,
                                                  thickness: 1.v,
                                                  color:
                                                      appTheme.blueGray300))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              padding: EdgeInsets.all(1.h),
                                              decoration: AppDecoration
                                                  .outlineSecondaryContainer
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Container(
                                                  height: 10.adaptSize,
                                                  width: 10.adaptSize,
                                                  decoration: BoxDecoration(
                                                      color: theme
                                                          .colorScheme.primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.h))))),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              width: 16.adaptSize,
                                              margin:
                                                  EdgeInsets.only(bottom: 49.v),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 4.h,
                                                  vertical: 1.v),
                                              decoration: AppDecoration
                                                  .fillOrange
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Text("lbl_a".tr,
                                                  style: theme
                                                      .textTheme.labelMedium)))
                                    ])),
                            CustomImageView(
                                imagePath: ImageConstant.imgPlaceblack24dp1,
                                height: 24.adaptSize,
                                width: 24.adaptSize)
                          ])),
                      _buildFrameTwo1(context)
                    ])),
            bottomNavigationBar: _buildDone(context)));
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
    return BlocSelector<DestinationAddBloc, DestinationAddState,
            TextEditingController?>(
        selector: (state) => state.frameTwoController,
        builder: (context, frameTwoController) {
          return CustomTextFormField(
              controller: frameTwoController,
              hintText: "msg_biplop_ai_masum".tr,
              hintStyle: CustomTextStyles.bodyLargeGray800,
              borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
              filled: true,
              fillColor: appTheme.gray10001);
        });
  }

  /// Section Widget
  Widget _buildSearchStop1(BuildContext context) {
    return Expanded(
        child: CustomOutlinedButton(
            height: 48.v,
            text: "lbl_search_stop_1".tr,
            rightIcon: Container(
                margin: EdgeInsets.only(left: 30.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgMenuBlueGray300,
                    height: 7.v,
                    width: 18.h)),
            buttonTextStyle: theme.textTheme.bodyLarge!));
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: BlocSelector<DestinationAddBloc, DestinationAddState,
                    TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomTextFormField(
                      controller: searchController,
                      hintText: "msg_search_destination".tr,
                      hintStyle: theme.textTheme.bodyLarge!,
                      textInputAction: TextInputAction.done,
                      borderDecoration:
                          TextFormFieldStyleHelper.outlineBlueGray,
                      filled: true,
                      fillColor: appTheme.gray10001);
                })));
  }

  /// Section Widget
  Widget _buildFrameTwo1(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 11.h, bottom: 399.v),
            child: Column(children: [
              _buildFrameTwo(context),
              SizedBox(height: 16.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(right: 11.h),
                      child: Row(children: [
                        _buildSearchStop1(context),
                        CustomImageView(
                            imagePath: ImageConstant.imgClearBlack24dp,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(
                                left: 18.h, top: 12.v, bottom: 12.v))
                      ]))),
              SizedBox(height: 17.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                _buildSearch(context),
                Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: CustomIconButton(
                        height: 48.v,
                        width: 45.h,
                        padding: EdgeInsets.all(10.h),
                        decoration: IconButtonStyleHelper.outlinePrimary,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgAddBlack24dp1Primary)))
              ])
            ])));
  }

  /// Section Widget
  Widget _buildDone(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_done".tr,
        margin: EdgeInsets.only(left: 19.h, right: 20.h, bottom: 64.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
