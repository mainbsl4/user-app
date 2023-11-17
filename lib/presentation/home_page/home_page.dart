import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/app_bar/appbar_circleimage.dart';
import 'package:user_app/widgets/app_bar/appbar_image.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_eight.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_search_view.dart';
import 'package:user_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.indigo5001,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillIndigo,
          child: SizedBox(
            height: 693.45.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 222.v,
                    ),
                    child: BlocSelector<HomeBloc, HomeState,
                        TextEditingController?>(
                      selector: (state) => state.searchController,
                      builder: (context, searchController) {
                        return CustomSearchView(
                          width: 76.h,
                          controller: searchController,
                          hintText: "lbl_back".tr,
                          alignment: Alignment.topLeft,
                        );
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 509.v,
                    width: 374.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img34333599778363,
                          height: 509.v,
                          width: 374.h,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMyLocationBlack24dp,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(
                            right: 20.h,
                            bottom: 94.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle1689,
                  height: 228.v,
                  width: 375.h,
                  alignment: Alignment.topCenter,
                ),
                _buildFiftyFive(context),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle1697,
                  height: 40.v,
                  width: 374.h,
                  alignment: Alignment.topCenter,
                ),
                Opacity(
                  opacity: 0.2,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 40.v),
                      child: SizedBox(
                        width: 374.h,
                        child: Divider(
                          color: appTheme.whiteA700.withOpacity(0.42),
                        ),
                      ),
                    ),
                  ),
                ),
                _buildAppBar(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyFive(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 32.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.customBorderBL32,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 40.v),
            SizedBox(
              width: 228.h,
              child: Text(
                "msg_where_is_your_destination".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.headlineLarge!.copyWith(
                  height: 1.33,
                ),
              ),
            ),
            SizedBox(height: 32.v),
            BlocSelector<HomeBloc, HomeState, TextEditingController?>(
              selector: (state) => state.placeblackdpOneController,
              builder: (context, placeblackdpOneController) {
                return CustomTextFormField(
                  controller: placeblackdpOneController,
                  hintText: "lbl_where_to".tr,
                  hintStyle: CustomTextStyles.titleMediumSecondaryContainer,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(11.h, 11.v, 8.h, 12.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlaceblack24dp1,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 48.v,
                  ),
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 12.v, 10.h, 11.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSearchblack24dp1,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 48.v,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 11.v),
                  borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
                  filled: true,
                  fillColor: appTheme.whiteA700,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 40.v,
      centerTitle: true,
      title: Container(
        width: 374.h,
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup313,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppbarCircleimage(
              imagePath: ImageConstant.imgEllipse4,
              margin: EdgeInsets.only(
                left: 1.h,
                bottom: 14.v,
              ),
            ),
            Container(
              height: 11.v,
              width: 26.h,
              margin: EdgeInsets.only(
                top: 21.v,
                bottom: 7.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.orange300,
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
              ),
            ),
            AppbarSubtitleEight(
              text: "lbl_4_9".tr,
              margin: EdgeInsets.only(
                top: 21.v,
                bottom: 7.v,
              ),
            ),
            AppbarImage(
              imagePath: ImageConstant.imgGradeBlack24dp,
              margin: EdgeInsets.only(
                top: 23.v,
                bottom: 8.v,
              ),
            ),
            AppbarSubtitleSix(
              text: "msg_27_vehicle_rental".tr,
              margin: EdgeInsets.only(
                left: 10.h,
                top: 16.v,
                bottom: 9.v,
              ),
            ),
            AppbarSubtitleFour(
              text: "msg_md_shamim_hossen".tr,
              margin: EdgeInsets.only(bottom: 24.v),
            ),
            AppbarImage(
              imagePath: ImageConstant.imgNotificationsBlack24dp,
              margin: EdgeInsets.only(
                left: 164.h,
                top: 3.v,
                bottom: 12.v,
              ),
            ),
          ],
        ),
      ),
      styleType: Style.bgStyle,
    );
  }
}
