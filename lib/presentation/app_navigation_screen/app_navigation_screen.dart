import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home Page - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homePageContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Destination Ten".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.destinationTenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Destination".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.destinationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Login One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Login".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Welcome Page".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.welcomePageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Destination add".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.destinationAddScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Destination Six".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.destinationSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Destination Twelve".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.destinationTwelveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Destination Thirteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.destinationThirteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Destination Seventeen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.destinationSeventeenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Destination Eleven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.destinationElevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Destination Twenty".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.destinationTwentyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Destination Nine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.destinationNineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Destination Eight - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.destinationEightTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "sign Up".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signUpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Destination Seven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.destinationSevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Destination Fifteen - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .destinationFifteenTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Destination Five".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.destinationFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Destination Four".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.destinationFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Location permission".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.locationPermissionScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Destination Fourteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.destinationFourteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Destination Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.destinationTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Review".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.reviewScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Destination Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.destinationThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Login Three".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Login Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Destination One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.destinationOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Pay".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.payScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
