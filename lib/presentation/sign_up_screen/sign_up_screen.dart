import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/core/utils/validation_functions.dart';
import 'package:user_app/widgets/app_bar/appbar_image.dart';
import 'package:user_app/widgets/app_bar/appbar_title.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';
import 'package:user_app/widgets/custom_outlined_button.dart';
import 'package:user_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
        create: (context) =>
            SignUpBloc(SignUpState(signUpModelObj: SignUpModel()))
              ..add(SignUpInitialEvent()),
        child: SignUpScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      _buildUpload1(context),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 19.h, vertical: 20.v),
                          child: Column(children: [
                            _buildPersonoutlineblackdpOne(context),
                            SizedBox(height: 14.v),
                            _buildCall(context),
                            SizedBox(height: 24.v),
                            _buildUpdate(context),
                            SizedBox(height: 5.v)
                          ]))
                    ])))));
  }

  /// Section Widget
  Widget _buildUpload(BuildContext context) {
    return CustomOutlinedButton(
        height: 38.v,
        text: "lbl_upload".tr,
        buttonStyle: CustomButtonStyles.outlineWhiteA,
        buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700_1);
  }

  /// Section Widget
  Widget _buildUpload1(BuildContext context) {
    return SizedBox(
        height: 244.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 125.h, vertical: 36.v),
                  decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL32),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 36.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgCamera,
                            height: 80.v,
                            width: 79.h),
                        SizedBox(height: 16.v),
                        _buildUpload(context)
                      ]))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5.v),
                  decoration: AppDecoration.fillPrimary,
                  child: CustomAppBar(
                      leadingWidth: 47.h,
                      leading: Container(
                          margin: EdgeInsets.only(left: 19.h),
                          padding: EdgeInsets.all(6.h),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder14),
                          child: AppbarImage(
                              imagePath: ImageConstant.imgArrowleft,
                              onTap: () {
                                onTapArrowLeft(context);
                              })),
                      title: AppbarTitle(
                          text: "lbl_information".tr,
                          margin: EdgeInsets.only(left: 21.h)))))
        ]));
  }

  /// Section Widget
  Widget _buildPersonoutlineblackdpOne(BuildContext context) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.personoutlineblackdpOneController,
        builder: (context, personoutlineblackdpOneController) {
          return CustomTextFormField(
              controller: personoutlineblackdpOneController,
              hintText: "msg_md_shamim_hossen3".tr,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(16.h, 13.v, 10.h, 13.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgPersonoutlineblack24dp1,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 50.v),
              contentPadding:
                  EdgeInsets.only(top: 14.v, right: 30.h, bottom: 14.v));
        });
  }

  /// Section Widget
  Widget _buildCall(BuildContext context) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.callController,
        builder: (context, callController) {
          return CustomTextFormField(
              controller: callController,
              hintText: "lbl_01783669597".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.phone,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(16.h, 13.v, 10.h, 13.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgCall,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 50.v),
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "err_msg_please_enter_valid_phone_number".tr;
                }
                return null;
              },
              contentPadding:
                  EdgeInsets.only(top: 14.v, right: 30.h, bottom: 14.v));
        });
  }

  /// Section Widget
  Widget _buildUpdate(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_update".tr,
        buttonStyle: CustomButtonStyles.fillGrayTL8,
        buttonTextStyle: CustomTextStyles.titleLargeSecondaryContainerSemiBold);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
