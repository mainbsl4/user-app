import '../destination_twelve_screen/widgets/destinationtwelve_item_widget.dart';
import 'bloc/destination_twelve_bloc.dart';
import 'models/destination_twelve_model.dart';
import 'models/destinationtwelve_item_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/core/utils/validation_functions.dart';
import 'package:user_app/widgets/app_bar/appbar_image.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';
import 'package:user_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DestinationTwelveScreen extends StatelessWidget {
  DestinationTwelveScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationTwelveBloc>(
        create: (context) => DestinationTwelveBloc(DestinationTwelveState(
            destinationTwelveModelObj: DestinationTwelveModel()))
          ..add(DestinationTwelveInitialEvent()),
        child: DestinationTwelveScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 19.h, vertical: 21.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_save_address_as".tr,
                              style: CustomTextStyles.titleLargeBluegray90001),
                          SizedBox(height: 19.v),
                          _buildDestinationTwelve(context),
                          SizedBox(height: 16.v),
                          Text("lbl_address_name".tr,
                              style: CustomTextStyles.titleLargeBluegray90001),
                          SizedBox(height: 12.v),
                          BlocSelector<
                                  DestinationTwelveBloc,
                                  DestinationTwelveState,
                                  TextEditingController?>(
                              selector: (state) => state.nameController,
                              builder: (context, nameController) {
                                return CustomTextFormField(
                                    controller: nameController,
                                    hintText: "msg_add_address_name".tr,
                                    textInputAction: TextInputAction.done,
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "err_msg_please_enter_valid_text"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    borderDecoration: TextFormFieldStyleHelper
                                        .outlineBlueGray,
                                    filled: true,
                                    fillColor: appTheme.gray10001);
                              }),
                          SizedBox(height: 16.v),
                          Text("lbl_address".tr,
                              style: CustomTextStyles.titleLargeBluegray90001),
                          SizedBox(height: 12.v),
                          _buildFrameThree(context),
                          SizedBox(height: 5.v)
                        ]))),
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
  Widget _buildDestinationTwelve(BuildContext context) {
    return SizedBox(
        height: 75.v,
        child: BlocSelector<DestinationTwelveBloc, DestinationTwelveState,
                DestinationTwelveModel?>(
            selector: (state) => state.destinationTwelveModelObj,
            builder: (context, destinationTwelveModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.only(right: 56.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 20.h);
                  },
                  itemCount: destinationTwelveModelObj
                          ?.destinationtwelveItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    DestinationtwelveItemModel model = destinationTwelveModelObj
                            ?.destinationtwelveItemList[index] ??
                        DestinationtwelveItemModel();
                    return DestinationtwelveItemWidget(model);
                  });
            }));
  }

  /// Section Widget
  Widget _buildFrameThree(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 10.v),
        decoration: AppDecoration.outlineBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgPlaceBlack24dp,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(bottom: 1.v)),
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
