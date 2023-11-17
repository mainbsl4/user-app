import 'bloc/destination_ten_bloc.dart';
import 'models/destination_ten_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/app_bar/appbar_image.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_icon_button.dart';
import 'package:user_app/widgets/custom_outlined_button.dart';
import 'package:user_app/widgets/custom_text_form_field.dart';

class DestinationTenScreen extends StatelessWidget {
  const DestinationTenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationTenBloc>(
        create: (context) => DestinationTenBloc(
            DestinationTenState(destinationTenModelObj: DestinationTenModel()))
          ..add(DestinationTenInitialEvent()),
        child: DestinationTenScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildArrowLeft(context),
                  SizedBox(height: 21.v),
                  _buildFiftyNine(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildArrowLeft(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5.v),
        decoration: AppDecoration.fillWhiteA,
        child: CustomAppBar(
            leadingWidth: 47.h,
            leading: Container(
                margin: EdgeInsets.only(left: 19.h),
                padding: EdgeInsets.all(6.h),
                decoration: AppDecoration.fillGray
                    .copyWith(borderRadius: BorderRadiusStyle.circleBorder14),
                child: AppbarImage(
                    imagePath: ImageConstant.imgArrowleft,
                    onTap: () {
                      onTapArrowLeft(context);
                    })),
            title: AppbarSubtitleOne(
                text: "lbl_location".tr, margin: EdgeInsets.only(left: 21.h))));
  }

  /// Section Widget
  Widget _buildFiftyNine(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 19.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v),
        decoration: AppDecoration.fillGray10001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          BlocSelector<DestinationTenBloc, DestinationTenState,
                  TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomTextFormField(
                    controller: searchController,
                    hintText: "msg_search_pickup_location".tr,
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                        margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgMylocationblack24dp1,
                            height: 24.adaptSize,
                            width: 24.adaptSize)),
                    prefixConstraints: BoxConstraints(maxHeight: 48.v),
                    contentPadding:
                        EdgeInsets.only(top: 13.v, right: 30.h, bottom: 13.v),
                    borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
                    filled: true,
                    fillColor: appTheme.gray10001);
              }),
          SizedBox(height: 16.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
                child: CustomOutlinedButton(
                    height: 48.v,
                    text: "msg_search_drop_off".tr,
                    leftIcon: Container(
                        margin: EdgeInsets.only(right: 10.h),
                        child: CustomImageView(
                            imagePath:
                                ImageConstant.imgLocalshippingblack24dp21,
                            height: 24.adaptSize,
                            width: 24.adaptSize)),
                    buttonTextStyle: CustomTextStyles.bodyLargeBluegray300_1)),
            Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: CustomIconButton(
                    height: 48.v,
                    width: 45.h,
                    padding: EdgeInsets.all(9.h),
                    decoration: IconButtonStyleHelper.outlineSecondaryContainer,
                    child: CustomImageView(
                        imagePath: ImageConstant.imgAddBlack24dp1)))
          ])
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
