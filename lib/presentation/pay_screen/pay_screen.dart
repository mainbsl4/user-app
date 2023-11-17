import 'bloc/pay_bloc.dart';
import 'models/pay_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/app_bar/appbar_image.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';

class PayScreen extends StatelessWidget {
  const PayScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PayBloc>(
        create: (context) =>
            PayBloc(PayState(payModelObj: PayModel()))..add(PayInitialEvent()),
        child: PayScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<PayBloc, PayState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    _buildArrowLeft(context),
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.h, vertical: 21.v),
                            child: Column(children: [
                              CustomElevatedButton(
                                  height: 48.v,
                                  text: "msg_promo_code_gift2".tr,
                                  buttonStyle: CustomButtonStyles.fillOrange,
                                  buttonTextStyle: theme.textTheme.bodyMedium!),
                              SizedBox(height: 20.v),
                              _buildNinetyTwo(context),
                              SizedBox(height: 20.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage10,
                                  height: 122.v,
                                  width: 332.h),
                              Spacer(),
                              SizedBox(height: 43.v),
                              CustomElevatedButton(text: "lbl_continue".tr)
                            ])))
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildArrowLeft(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 3.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 1.v),
          CustomAppBar(
              height: 31.v,
              leadingWidth: 46.h,
              leading: Container(
                  margin: EdgeInsets.only(left: 18.h, bottom: 3.v),
                  padding: EdgeInsets.all(6.h),
                  decoration: AppDecoration.fillGray
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder14),
                  child: AppbarImage(
                      imagePath: ImageConstant.imgArrowleft,
                      onTap: () {
                        onTapArrowLeft(context);
                      })),
              title: AppbarSubtitleOne(
                  text: "lbl_pay_now".tr, margin: EdgeInsets.only(left: 21.h)))
        ]));
  }

  /// Section Widget
  Widget _buildNinetyTwo(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 58.h, vertical: 15.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Text("msg_total_fare_payable".tr,
                  style: CustomTextStyles.bodyLargeWhiteA700_1),
              SizedBox(height: 15.v),
              Text("lbl_bdt_2900_tk".tr, style: CustomTextStyles.displaySmall36)
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
