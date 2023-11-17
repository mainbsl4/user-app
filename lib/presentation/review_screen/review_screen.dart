import 'bloc/review_bloc.dart';
import 'models/review_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/app_bar/appbar_image.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';
import 'package:user_app/widgets/custom_rating_bar.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ReviewBloc>(
        create: (context) =>
            ReviewBloc(ReviewState(reviewModelObj: ReviewModel()))
              ..add(ReviewInitialEvent()),
        child: ReviewScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ReviewBloc, ReviewState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    _buildArrowLeft(context),
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.h, vertical: 16.v),
                            child: Column(children: [
                              CustomElevatedButton(
                                  height: 48.v,
                                  text: "msg_paid_vai_digital".tr,
                                  leftIcon: Container(
                                      margin: EdgeInsets.only(right: 15.h),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgCheckcircleblack24dp1,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  buttonStyle: CustomButtonStyles.fillGreenTL2,
                                  buttonTextStyle:
                                      CustomTextStyles.bodyMediumWhiteA700),
                              SizedBox(height: 20.v),
                              _buildWereYouSatisfied(context),
                              Spacer(),
                              SizedBox(height: 48.v),
                              CustomElevatedButton(text: "lbl_submit".tr)
                            ])))
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildArrowLeft(BuildContext context) {
    return SizedBox(
        height: 44.v,
        width: 374.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h, top: 5.v),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowleft,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(top: 3.v, bottom: 4.v),
                            onTap: () {
                              onTapImgArrowLeft(context);
                            }),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Text("lbl_back".tr,
                                style: CustomTextStyles
                                    .titleLargeSecondaryContainer))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle1677,
              height: 44.v,
              width: 374.h,
              alignment: Alignment.center),
          CustomAppBar(
              height: 39.v,
              leadingWidth: 46.h,
              leading: Container(
                  margin: EdgeInsets.only(left: 18.h, top: 5.v, bottom: 5.v),
                  padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 6.v),
                  decoration: AppDecoration.fillGray
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder14),
                  child: AppbarImage(
                      imagePath:
                          ImageConstant.imgClearBlack24dpSecondarycontainer,
                      margin: EdgeInsets.only(left: 1.h))),
              title: AppbarSubtitleOne(
                  text: "lbl_rating".tr, margin: EdgeInsets.only(left: 21.h)))
        ]));
  }

  /// Section Widget
  Widget _buildWereYouSatisfied(BuildContext context) {
    return Container(
        width: 335.h,
        padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 23.v),
        decoration: AppDecoration.outlineBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("msg_were_you_satisfied".tr,
                  style: CustomTextStyles.bodyLargeBlack900),
              SizedBox(height: 23.v),
              CustomRatingBar(
                  alignment: Alignment.center, initialRating: 0, itemSize: 32)
            ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
