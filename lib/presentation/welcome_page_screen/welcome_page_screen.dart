import 'bloc/welcome_page_bloc.dart';
import 'models/welcome_page_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';

class WelcomePageScreen extends StatelessWidget {
  const WelcomePageScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomePageBloc>(
      create: (context) => WelcomePageBloc(WelcomePageState(
        welcomePageModelObj: WelcomePageModel(),
      ))
        ..add(WelcomePageInitialEvent()),
      child: WelcomePageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<WelcomePageBloc, WelcomePageState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 19.h,
                vertical: 35.v,
              ),
              child: Column(
                children: [
                  Text(
                    "lbl_welcome".tr,
                    style: theme.textTheme.displayMedium,
                  ),
                  SizedBox(height: 34.v),
                  SizedBox(
                    height: 433.v,
                    width: 335.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        _buildEightyFive(context),
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorOnprimarycontainer,
                          height: 10.v,
                          width: 268.h,
                          alignment: Alignment.bottomCenter,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorWhiteA700,
                          height: 18.v,
                          width: 67.h,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(bottom: 88.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorWhiteA700,
                          height: 19.v,
                          width: 69.h,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(top: 199.v),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 12.h,
                              bottom: 7.v,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 33.h,
                              vertical: 42.v,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: fs.Svg(
                                  ImageConstant.imgFrame,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 38.v),
                                Text(
                                  "lbl_trip24".tr,
                                  style: theme.textTheme.displaySmall,
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLogo1,
                          height: 237.v,
                          width: 167.h,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(right: 59.h),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 85.v),
                  CustomElevatedButton(
                    text: "lbl_get_started".tr,
                    rightIcon: Container(
                      margin: EdgeInsets.only(left: 30.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgEastblack24dp1,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEightyFive(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 8.h,
          right: 2.h,
          bottom: 5.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 42.h,
          vertical: 118.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup85,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 24.v),
            CustomImageView(
              imagePath: ImageConstant.imgVectorWhiteA700,
              height: 18.v,
              width: 67.h,
            ),
            SizedBox(height: 53.v),
            CustomImageView(
              imagePath: ImageConstant.imgVectorWhiteA700,
              height: 9.v,
              width: 33.h,
              margin: EdgeInsets.only(left: 55.h),
            ),
          ],
        ),
      ),
    );
  }
}
