import 'bloc/login_one_bloc.dart';
import 'models/login_one_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/core/utils/validation_functions.dart';
import 'package:user_app/widgets/app_bar/appbar_image.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_checkbox_button.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';
import 'package:user_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginOneScreen extends StatelessWidget {
  LoginOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginOneBloc>(
        create: (context) =>
            LoginOneBloc(LoginOneState(loginOneModelObj: LoginOneModel()))
              ..add(LoginOneInitialEvent()),
        child: LoginOneScreen());
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
                    padding: EdgeInsets.symmetric(vertical: 42.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgGroupAmber600,
                          height: 171.v,
                          width: 374.h),
                      SizedBox(height: 40.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 21.h),
                              child: Text("msg_enter_your_password".tr,
                                  style: theme.textTheme.titleLarge))),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(left: 21.h, right: 19.h),
                          child: BlocBuilder<LoginOneBloc, LoginOneState>(
                              builder: (context, state) {
                            return CustomTextFormField(
                                controller: state.passwordController,
                                hintText: "lbl_password".tr,
                                hintStyle: CustomTextStyles
                                    .bodyMediumSecondaryContainer,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                prefix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        16.h, 13.v, 10.h, 13.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgLockoutlineblack24dp1,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize)),
                                prefixConstraints:
                                    BoxConstraints(maxHeight: 50.v),
                                suffix: InkWell(
                                    onTap: () {
                                      context.read<LoginOneBloc>().add(
                                          ChangePasswordVisibilityEvent(
                                              value: !state.isShowPassword));
                                    },
                                    child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            30.h, 13.v, 20.h, 17.v),
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVisibilityoffblack24dp1,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize))),
                                suffixConstraints:
                                    BoxConstraints(maxHeight: 50.v),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "err_msg_please_enter_valid_password"
                                        .tr;
                                  }
                                  return null;
                                },
                                obscureText: state.isShowPassword,
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 14.v));
                          })),
                      SizedBox(height: 8.v),
                      _buildFrame(context),
                      SizedBox(height: 23.v),
                      CustomElevatedButton(
                          text: "lbl_continue".tr,
                          margin: EdgeInsets.symmetric(horizontal: 19.h)),
                      Spacer(),
                      SizedBox(height: 19.v),
                      Container(
                          width: 313.h,
                          margin: EdgeInsets.symmetric(horizontal: 31.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_tapping_equals_agreement2".tr,
                                    style: theme.textTheme.bodySmall),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "msg_terms_and_condition".tr,
                                    style: CustomTextStyles.bodySmallPrimary_1
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline)),
                                TextSpan(
                                    text: "lbl".tr,
                                    style: theme.textTheme.bodySmall!.copyWith(
                                        decoration: TextDecoration.underline)),
                                TextSpan(
                                    text: "lbl_and".tr,
                                    style: theme.textTheme.bodySmall),
                                TextSpan(
                                    text: "lbl_privacy_policy".tr,
                                    style: CustomTextStyles.bodySmallPrimary_1
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline)),
                                TextSpan(
                                    text: "lbl2".tr,
                                    style: theme.textTheme.bodySmall)
                              ]),
                              textAlign: TextAlign.center))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 39.v,
        leadingWidth: 47.h,
        leading: Container(
            margin: EdgeInsets.only(left: 19.h, top: 5.v, bottom: 5.v),
            padding: EdgeInsets.all(6.h),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder14),
            child: AppbarImage(
                imagePath: ImageConstant.imgArrowleft,
                onTap: () {
                  onTapArrowLeft(context);
                })),
        title: AppbarSubtitleOne(
            text: "lbl_password".tr, margin: EdgeInsets.only(left: 21.h)));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: BlocSelector<LoginOneBloc, LoginOneState, bool?>(
                  selector: (state) => state.rememberMe,
                  builder: (context, rememberMe) {
                    return CustomCheckboxButton(
                        text: "lbl_remember_me".tr,
                        value: rememberMe,
                        textStyle:
                            CustomTextStyles.bodyMediumSecondaryContainer,
                        onChange: (value) {
                          context
                              .read<LoginOneBloc>()
                              .add(ChangeCheckBoxEvent(value: value));
                        });
                  })),
          Text("lbl_forgot_password".tr,
              style: CustomTextStyles.bodyMediumPrimary)
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
