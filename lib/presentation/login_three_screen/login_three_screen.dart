import 'bloc/login_three_bloc.dart';
import 'models/login_three_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/core/utils/validation_functions.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';
import 'package:user_app/widgets/custom_text_form_field.dart';

class LoginThreeScreen extends StatelessWidget {
  LoginThreeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginThreeBloc>(
      create: (context) => LoginThreeBloc(LoginThreeState(
        loginThreeModelObj: LoginThreeModel(),
      ))
        ..add(LoginThreeInitialEvent()),
      child: LoginThreeScreen(),
    );
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
            child: Column(
              children: [
                _buildPassword(context),
                SizedBox(height: 42.v),
                CustomImageView(
                  imagePath: ImageConstant.imgGroupAmber600,
                  height: 171.v,
                  width: 374.h,
                ),
                SizedBox(height: 40.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 21.h),
                    child: Text(
                      "msg_enter_your_new_password".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                _buildNewpassword(context),
                SizedBox(height: 12.v),
                _buildConfirmpassword(context),
                SizedBox(height: 24.v),
                _buildUpdate(context),
                Spacer(),
                SizedBox(height: 62.v),
                Container(
                  width: 313.h,
                  margin: EdgeInsets.symmetric(horizontal: 31.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_tapping_equals_agreement2".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "msg_terms_and_condition".tr,
                          style: CustomTextStyles.bodySmallPrimary_1.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: "lbl".tr,
                          style: theme.textTheme.bodySmall!.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: "lbl_and".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: "lbl_privacy_policy".tr,
                          style: CustomTextStyles.bodySmallPrimary_1.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: "lbl2".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return BlocSelector<LoginThreeBloc, LoginThreeState,
        TextEditingController?>(
      selector: (state) => state.passwordController,
      builder: (context, passwordController) {
        return CustomTextFormField(
          controller: passwordController,
          hintText: "lbl_password".tr,
          hintStyle: theme.textTheme.titleLarge!,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(25.h, 30.v, 26.h, 12.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgClearBlack24dpSecondarycontainer,
              height: 16.adaptSize,
              width: 16.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 39.v,
          ),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
          contentPadding: EdgeInsets.only(
            top: 27.v,
            right: 30.h,
            bottom: 27.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillWhiteA1,
          filled: true,
          fillColor: appTheme.whiteA700,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildNewpassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 19.h,
      ),
      child: BlocBuilder<LoginThreeBloc, LoginThreeState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.newpasswordController,
            hintText: "lbl_new_password".tr,
            hintStyle: CustomTextStyles.bodyMediumSecondaryContainer,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 13.v, 10.h, 13.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgLockoutlineblack24dp1,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 50.v,
            ),
            suffix: InkWell(
              onTap: () {
                context.read<LoginThreeBloc>().add(
                    ChangePasswordVisibilityEvent(
                        value: !state.isShowPassword));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 13.v, 16.h, 17.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVisibilityoffblack24dp1,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 50.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword,
            contentPadding: EdgeInsets.symmetric(vertical: 14.v),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 19.h,
      ),
      child: BlocBuilder<LoginThreeBloc, LoginThreeState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.confirmpasswordController,
            hintText: "msg_confirm_password".tr,
            hintStyle: CustomTextStyles.bodyMediumSecondaryContainer,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 13.v, 10.h, 13.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgLockoutlineblack24dp1,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 50.v,
            ),
            suffix: InkWell(
              onTap: () {
                context.read<LoginThreeBloc>().add(
                    ChangePasswordVisibilityEvent1(
                        value: !state.isShowPassword1));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 13.v, 22.h, 17.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVisibilityoffblack24dp1,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 50.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword1,
            contentPadding: EdgeInsets.symmetric(vertical: 14.v),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUpdate(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_update".tr,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 19.h,
      ),
    );
  }
}
