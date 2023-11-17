import '../destination_thirteen_screen/widgets/destinationthirteen_item_widget.dart';
import 'bloc/destination_thirteen_bloc.dart';
import 'models/destination_thirteen_model.dart';
import 'models/destinationthirteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/app_bar/appbar_image.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_icon_button.dart';
import 'package:user_app/widgets/custom_outlined_button.dart';
import 'package:user_app/widgets/custom_text_form_field.dart';

class DestinationThirteenScreen extends StatelessWidget {
  const DestinationThirteenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationThirteenBloc>(
        create: (context) => DestinationThirteenBloc(DestinationThirteenState(
            destinationThirteenModelObj: DestinationThirteenModel()))
          ..add(DestinationThirteenInitialEvent()),
        child: DestinationThirteenScreen());
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
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 13.h, vertical: 21.v),
                      child: Column(children: [
                        _buildSixtyThree(context),
                        SizedBox(height: 20.v),
                        _buildDestinationThirteen(context)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildArrowLeft(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5.v),
        decoration: AppDecoration.fillWhiteA,
        child: CustomAppBar(
            leadingWidth: 48.h,
            leading: Container(
                margin: EdgeInsets.only(left: 20.h),
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
  Widget _buildSixtyThree(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 6.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v),
        decoration: AppDecoration.fillGray10001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          BlocSelector<DestinationThirteenBloc, DestinationThirteenState,
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

  /// Section Widget
  Widget _buildDestinationThirteen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: BlocSelector<DestinationThirteenBloc, DestinationThirteenState,
                DestinationThirteenModel?>(
            selector: (state) => state.destinationThirteenModelObj,
            builder: (context, destinationThirteenModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 20.v);
                  },
                  itemCount: destinationThirteenModelObj
                          ?.destinationthirteenItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    DestinationthirteenItemModel model =
                        destinationThirteenModelObj
                                ?.destinationthirteenItemList[index] ??
                            DestinationthirteenItemModel();
                    return DestinationthirteenItemWidget(model);
                  });
            }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
