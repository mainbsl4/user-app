import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:user_app/core/app_export.dart';
import 'package:user_app/core/utils/validation_functions.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';
import 'package:user_app/widgets/custom_text_form_field.dart';
import 'package:user_app/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
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
                      _buildVector(context),
                      SizedBox(height: 22.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 20.h),
                              child: Text("msg_enter_your_mobile".tr,
                                  style: theme.textTheme.titleLarge))),
                      SizedBox(height: 7.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          child: BlocSelector<LoginBloc, LoginState,
                                  TextEditingController?>(
                              selector: (state) => state.mobileNumberController,
                              builder: (context, mobileNumberController) {
                                return CustomTextFormField(
                                    controller: mobileNumberController,
                                    hintText: "msg_please_enter_a_mobile".tr,
                                    hintStyle: CustomTextStyles
                                        .bodyMediumSecondaryContainer,
                                    textInputAction: TextInputAction.done,
                                    textInputType: TextInputType.phone,
                                    prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            16.h, 13.v, 10.h, 13.v),
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgCall,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 50.v),
                                    validator: (value) {
                                      if (!isValidPhone(value)) {
                                        return "err_msg_please_enter_valid_phone_number"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    contentPadding: EdgeInsets.only(
                                        top: 14.v, right: 16.h, bottom: 14.v));
                              })),
                      SizedBox(height: 19.v),
                      CustomElevatedButton(
                          text: "lbl_continue".tr,
                          margin: EdgeInsets.only(left: 18.h, right: 20.h)),
                      SizedBox(height: 18.v),
                      _buildTwelve(context),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 53.h),
                              child: Row(children: [
                                Container(
                                    height: 48.v,
                                    width: 75.h,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30.h, vertical: 13.v),
                                    decoration: AppDecoration.outlineOnPrimary
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder5),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgFacebook,
                                        height: 19.v,
                                        width: 10.h,
                                        alignment: Alignment.centerRight,
                                        onTap: () {
                                          onTapImgFacebook(context);
                                        })),
                                Container(
                                    height: 48.v,
                                    width: 75.h,
                                    margin: EdgeInsets.only(left: 10.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 24.h, vertical: 11.v),
                                    decoration: AppDecoration.outlineOnPrimary
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder5),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgGoogle1,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        alignment: Alignment.centerLeft)),
                                Container(
                                    height: 48.v,
                                    width: 75.h,
                                    margin: EdgeInsets.only(left: 10.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 24.h, vertical: 11.v),
                                    decoration: AppDecoration.outlineOnPrimary
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder5),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgAppleLogo1,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        alignment: Alignment.centerLeft))
                              ]))),
                      Spacer(),
                      SizedBox(height: 62.v),
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
  Widget _buildVector(BuildContext context) {
    return Container(
        height: 251.v,
        width: 374.h,
        decoration: AppDecoration.fillGray100,
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: EdgeInsets.only(left: 10.h, top: 66.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 35.h, vertical: 11.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgGroup15),
                          fit: BoxFit.cover)),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: 10.v,
                                width: 13.h,
                                margin: EdgeInsets.only(right: 62.h),
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgVector,
                                          height: 10.v,
                                          width: 13.h,
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              height: 1.v,
                                              width: 13.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.indigo100)))
                                    ]))),
                        SizedBox(height: 3.v),
                        Row(children: [
                          SizedBox(
                              height: 21.v,
                              width: 27.h,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            height: 14.v,
                                            width: 1.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.indigo10001))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            height: 5.v,
                                            width: 17.h,
                                            margin:
                                                EdgeInsets.only(bottom: 6.v),
                                            decoration: BoxDecoration(
                                                color: appTheme.indigo50))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            height: 7.v,
                                            width: 27.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.indigo10001)))
                                  ])),
                          Container(
                              height: 2.v,
                              width: 13.h,
                              margin: EdgeInsets.only(
                                  left: 155.h, top: 16.v, bottom: 2.v),
                              decoration:
                                  BoxDecoration(color: appTheme.indigo100))
                        ]),
                        SizedBox(height: 20.v)
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgVectorIndigo100,
              height: 78.v,
              width: 34.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 30.v)),
          CustomImageView(
              imagePath: ImageConstant.imgVectorIndigo10099x36,
              height: 99.v,
              width: 36.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 153.h, bottom: 30.v)),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  height: 106.v,
                  width: 37.h,
                  margin: EdgeInsets.only(left: 35.h, bottom: 30.v),
                  padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 5.v),
                  decoration: AppDecoration.fillIndigo50,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgMenu,
                      height: 86.v,
                      width: 27.h,
                      alignment: Alignment.topCenter))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  height: 106.v,
                  width: 7.h,
                  margin: EdgeInsets.only(left: 72.h, bottom: 30.v),
                  decoration: BoxDecoration(color: appTheme.indigo10001))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  height: 154.v,
                  width: 78.h,
                  margin: EdgeInsets.only(left: 82.h, bottom: 30.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgGroup183),
                          fit: BoxFit.cover)),
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            height: 152.v,
                            width: 34.h,
                            decoration:
                                BoxDecoration(color: appTheme.indigo10001))),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: EdgeInsets.only(top: 22.v),
                            child: Container(
                                height: 4.v,
                                width: 78.h,
                                decoration:
                                    BoxDecoration(color: appTheme.indigo5003),
                                child: ClipRRect(
                                    child: LinearProgressIndicator(
                                        value: 0.44,
                                        backgroundColor: appTheme.indigo5003,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                appTheme.indigo50)))))),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: EdgeInsets.only(top: 35.v),
                            child: Container(
                                height: 4.v,
                                width: 78.h,
                                decoration:
                                    BoxDecoration(color: appTheme.indigo5003),
                                child: ClipRRect(
                                    child: LinearProgressIndicator(
                                        value: 0.44,
                                        backgroundColor: appTheme.indigo5003,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                appTheme.indigo50)))))),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: EdgeInsets.only(top: 49.v),
                            child: Container(
                                height: 4.v,
                                width: 78.h,
                                decoration:
                                    BoxDecoration(color: appTheme.indigo5003),
                                child: ClipRRect(
                                    child: LinearProgressIndicator(
                                        value: 0.44,
                                        backgroundColor: appTheme.indigo5003,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                appTheme.indigo50)))))),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: EdgeInsets.only(top: 62.v),
                            child: Container(
                                height: 4.v,
                                width: 78.h,
                                decoration:
                                    BoxDecoration(color: appTheme.indigo5003),
                                child: ClipRRect(
                                    child: LinearProgressIndicator(
                                        value: 0.44,
                                        backgroundColor: appTheme.indigo5003,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                appTheme.indigo50)))))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 4.v,
                            width: 78.h,
                            decoration:
                                BoxDecoration(color: appTheme.indigo5003),
                            child: ClipRRect(
                                child: LinearProgressIndicator(
                                    value: 0.44,
                                    backgroundColor: appTheme.indigo5003,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        appTheme.indigo50))))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 61.v),
                            child: Container(
                                height: 4.v,
                                width: 78.h,
                                decoration:
                                    BoxDecoration(color: appTheme.indigo5003),
                                child: ClipRRect(
                                    child: LinearProgressIndicator(
                                        value: 0.44,
                                        backgroundColor: appTheme.indigo5003,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                appTheme.indigo50)))))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 47.v),
                            child: Container(
                                height: 4.v,
                                width: 78.h,
                                decoration:
                                    BoxDecoration(color: appTheme.indigo5003),
                                child: ClipRRect(
                                    child: LinearProgressIndicator(
                                        value: 0.44,
                                        backgroundColor: appTheme.indigo5003,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                appTheme.indigo50)))))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 33.v),
                            child: Container(
                                height: 4.v,
                                width: 78.h,
                                decoration:
                                    BoxDecoration(color: appTheme.indigo5003),
                                child: ClipRRect(
                                    child: LinearProgressIndicator(
                                        value: 0.44,
                                        backgroundColor: appTheme.indigo5003,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                appTheme.indigo50))))))
                  ]))),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 112.v,
                  width: 13.h,
                  margin: EdgeInsets.only(right: 147.h, bottom: 30.v),
                  padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 5.v),
                  decoration: AppDecoration.fillIndigo,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgMenuIndigo10001,
                      height: 73.v,
                      width: 8.h,
                      alignment: Alignment.topLeft))),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 131.v,
                  width: 19.h,
                  margin: EdgeInsets.only(right: 127.h, bottom: 30.v),
                  decoration: BoxDecoration(color: appTheme.indigo10001))),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 131.v,
                  width: 6.h,
                  margin: EdgeInsets.only(right: 121.h, bottom: 30.v),
                  child: Stack(alignment: Alignment.topLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgVectorIndigo100131x6,
                        height: 131.v,
                        width: 6.h,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                            height: 104.v,
                            child: VerticalDivider(
                                width: 4.h,
                                thickness: 4.v,
                                color: appTheme.indigo10001,
                                indent: 5.h)))
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgMenuIndigo5001,
              height: 99.v,
              width: 17.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 127.h, bottom: 57.v)),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 107.v,
                  width: 31.h,
                  margin: EdgeInsets.only(right: 68.h, bottom: 30.v),
                  padding: EdgeInsets.all(4.h),
                  decoration: AppDecoration.fillIndigo10001,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgVectorIndigo10077x22,
                      height: 77.v,
                      width: 22.h,
                      alignment: Alignment.topCenter))),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 103.v,
                  width: 36.h,
                  margin: EdgeInsets.only(right: 32.h, bottom: 30.v),
                  padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 3.v),
                  decoration: AppDecoration.fillIndigo50,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgBattery,
                      height: 95.v,
                      width: 15.h,
                      alignment: Alignment.centerRight))),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 103.v,
                  width: 21.h,
                  margin: EdgeInsets.only(right: 11.h, bottom: 30.v),
                  child: Stack(alignment: Alignment.topCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgVectorIndigo100131x6,
                        height: 103.v,
                        width: 21.h,
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgVectorIndigo10001,
                        height: 57.v,
                        width: 12.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 6.v))
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgVectorIndigo1000112x28,
              height: 12.v,
              width: 28.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 105.v, right: 36.h)),
          CustomImageView(
              imagePath: ImageConstant.imgVectorIndigo5001,
              height: 107.v,
              width: 17.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 100.h, bottom: 30.v)),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  margin: EdgeInsets.only(left: 134.h, bottom: 30.v),
                  padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 6.v),
                  decoration: AppDecoration.fillIndigo50,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgBatteryIndigo5002,
                            height: 6.v,
                            width: 23.h),
                        SizedBox(height: 4.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 6.v,
                                  width: 2.h,
                                  decoration: BoxDecoration(
                                      color: appTheme.indigo5002)),
                              Container(
                                  height: 6.v,
                                  width: 2.h,
                                  margin: EdgeInsets.only(left: 4.h),
                                  decoration: BoxDecoration(
                                      color: appTheme.indigo10001)),
                              Container(
                                  height: 6.v,
                                  width: 2.h,
                                  margin: EdgeInsets.only(left: 4.h),
                                  decoration: BoxDecoration(
                                      color: appTheme.indigo5002)),
                              Container(
                                  height: 6.v,
                                  width: 2.h,
                                  margin: EdgeInsets.only(left: 4.h),
                                  decoration: BoxDecoration(
                                      color: appTheme.indigo10001))
                            ]),
                        SizedBox(height: 4.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgBatteryIndigo5002,
                            height: 6.v,
                            width: 23.h),
                        SizedBox(height: 4.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 6.v,
                                  width: 2.h,
                                  decoration: BoxDecoration(
                                      color: appTheme.indigo5002)),
                              Container(
                                  height: 6.v,
                                  width: 2.h,
                                  margin: EdgeInsets.only(left: 4.h),
                                  decoration: BoxDecoration(
                                      color: appTheme.indigo10001)),
                              Container(
                                  height: 6.v,
                                  width: 2.h,
                                  margin: EdgeInsets.only(left: 4.h),
                                  decoration: BoxDecoration(
                                      color: appTheme.indigo10001)),
                              Container(
                                  height: 6.v,
                                  width: 2.h,
                                  margin: EdgeInsets.only(left: 4.h),
                                  decoration:
                                      BoxDecoration(color: appTheme.indigo5002))
                            ]),
                        SizedBox(height: 5.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 6.v,
                                  width: 2.h,
                                  decoration: BoxDecoration(
                                      color: appTheme.indigo5002)),
                              Container(
                                  height: 6.v,
                                  width: 2.h,
                                  margin: EdgeInsets.only(left: 4.h),
                                  decoration: BoxDecoration(
                                      color: appTheme.indigo5002)),
                              Container(
                                  height: 6.v,
                                  width: 2.h,
                                  margin: EdgeInsets.only(left: 4.h),
                                  decoration: BoxDecoration(
                                      color: appTheme.indigo5002)),
                              Container(
                                  height: 6.v,
                                  width: 2.h,
                                  margin: EdgeInsets.only(left: 4.h),
                                  decoration:
                                      BoxDecoration(color: appTheme.indigo5002))
                            ]),
                        SizedBox(height: 4.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgBatteryIndigo5002,
                            height: 6.v,
                            width: 23.h),
                        SizedBox(height: 1.v)
                      ]))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  height: 86.v,
                  width: 29.h,
                  margin: EdgeInsets.only(left: 164.h, bottom: 30.v),
                  child: Stack(alignment: Alignment.centerLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgVectorIndigo1000186x29,
                        height: 86.v,
                        width: 29.h,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgVectorIndigo10088x38,
                              height: 88.v,
                              width: 38.h),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 129.h, top: 17.v, bottom: 19.v),
                              child: Column(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgBatteryIndigo5001,
                                    height: 6.v,
                                    width: 23.h),
                                SizedBox(height: 4.v),
                                SizedBox(
                                    width: 23.h,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              height: 6.v,
                                              width: 2.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.indigo5001)),
                                          Container(
                                              height: 6.v,
                                              width: 2.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.indigo5001)),
                                          Container(
                                              height: 6.v,
                                              width: 2.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.indigo5002)),
                                          Container(
                                              height: 6.v,
                                              width: 2.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.indigo5001))
                                        ])),
                                SizedBox(height: 15.v),
                                SizedBox(
                                    width: 23.h,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              height: 6.v,
                                              width: 2.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.indigo5001)),
                                          Container(
                                              height: 6.v,
                                              width: 2.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.indigo5002)),
                                          Container(
                                              height: 6.v,
                                              width: 2.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.indigo5001)),
                                          Container(
                                              height: 6.v,
                                              width: 2.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.indigo5001))
                                        ])),
                                SizedBox(height: 5.v),
                                SizedBox(
                                    width: 23.h,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              height: 6.v,
                                              width: 2.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.indigo5002)),
                                          Container(
                                              height: 6.v,
                                              width: 2.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.indigo5001)),
                                          Container(
                                              height: 6.v,
                                              width: 2.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.indigo5001)),
                                          Container(
                                              height: 6.v,
                                              width: 2.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.indigo5001))
                                        ]))
                              ]))
                        ]))
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgVectorIndigo5002,
              height: 8.v,
              width: 44.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 134.h, bottom: 108.v)),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle1687,
              height: 23.v,
              width: 374.h,
              alignment: Alignment.bottomCenter),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  margin: EdgeInsets.only(left: 20.h, bottom: 18.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 27.h, vertical: 20.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgGroup13),
                          fit: BoxFit.cover)),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 33.v),
                        Text("lbl_trip24".tr,
                            style: CustomTextStyles.titleLargeGray300)
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgGroupPrimary54x140,
              height: 54.v,
              width: 140.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 20.h, bottom: 17.v))
        ]));
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return SizedBox(
        width: double.maxFinite,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 9.v, bottom: 11.v),
                  child: SizedBox(
                      width: 170.h, child: Divider(color: appTheme.gray300))),
              Text("lbl_or".tr, style: theme.textTheme.bodyLarge),
              Padding(
                  padding: EdgeInsets.only(top: 9.v, bottom: 11.v),
                  child: SizedBox(
                      width: 170.h, child: Divider(color: appTheme.gray300)))
            ]));
  }

  /// Performs a Facebook sign-in and returns a [FacebookUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Facebook sign-in process fails.
  onTapImgFacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
