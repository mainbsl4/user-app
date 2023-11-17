import '../destination_six_screen/widgets/destinationsix_item_widget.dart';
import 'bloc/destination_six_bloc.dart';
import 'models/destination_six_model.dart';
import 'models/destinationsix_item_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/app_bar/appbar_image.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';

class DestinationSixScreen extends StatelessWidget {
  const DestinationSixScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationSixBloc>(
        create: (context) => DestinationSixBloc(
            DestinationSixState(destinationSixModelObj: DestinationSixModel()))
          ..add(DestinationSixInitialEvent()),
        child: DestinationSixScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 21.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text("lbl_save_address_as".tr,
                              style: CustomTextStyles.titleLargeBluegray90001)),
                      SizedBox(height: 19.v),
                      _buildDestinationSix(context),
                      SizedBox(height: 16.v),
                      Text("lbl_address".tr,
                          style: CustomTextStyles.titleLargeBluegray90001),
                      SizedBox(height: 12.v),
                      _buildFrameThree(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildCancel(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 39.v,
        leadingWidth: 49.h,
        leading: Container(
            margin: EdgeInsets.only(left: 21.h, top: 5.v, bottom: 5.v),
            padding: EdgeInsets.all(6.h),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder14),
            child: AppbarImage(
                imagePath: ImageConstant.imgArrowleft,
                onTap: () {
                  onTapArrowLeft(context);
                })),
        title: AppbarSubtitleOne(
            text: "lbl_save_address".tr, margin: EdgeInsets.only(left: 21.h)));
  }

  /// Section Widget
  Widget _buildDestinationSix(BuildContext context) {
    return SizedBox(
        height: 75.v,
        child: BlocSelector<DestinationSixBloc, DestinationSixState,
                DestinationSixModel?>(
            selector: (state) => state.destinationSixModelObj,
            builder: (context, destinationSixModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 5.h, right: 62.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 20.h);
                  },
                  itemCount:
                      destinationSixModelObj?.destinationsixItemList.length ??
                          0,
                  itemBuilder: (context, index) {
                    DestinationsixItemModel model =
                        destinationSixModelObj?.destinationsixItemList[index] ??
                            DestinationsixItemModel();
                    return DestinationsixItemWidget(model);
                  });
            }));
  }

  /// Section Widget
  Widget _buildFrameThree(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 13.h),
        padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 10.v),
        decoration: AppDecoration.outlineBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgPlaceBlack24dp,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 8.h, bottom: 1.v)),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 3.v),
                  child: Text("msg_archa_highway_nobinagar".tr,
                      style: CustomTextStyles.bodyLargeGray800)),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(left: 10.h, top: 2.v, bottom: 1.v))
            ]));
  }

  /// Section Widget
  Widget _buildCancel(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 56.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomElevatedButton(
              width: 157.h,
              text: "lbl_cancel".tr,
              buttonStyle: CustomButtonStyles.fillBlueGray),
          CustomElevatedButton(
              width: 157.h,
              text: "lbl_save".tr,
              margin: EdgeInsets.only(left: 19.h))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
