import 'bloc/destination_eight_tab_container_bloc.dart';
import 'models/destination_eight_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/presentation/destination_eight_page/destination_eight_page.dart';
import 'package:user_app/presentation/home_page/home_page.dart';
import 'package:user_app/presentation/home_page_one_page/home_page_one_page.dart';
import 'package:user_app/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:user_app/widgets/app_bar/appbar_title_image.dart';
import 'package:user_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_bottom_bar.dart';

class DestinationEightTabContainerScreen extends StatefulWidget {
  const DestinationEightTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DestinationEightTabContainerScreenState createState() =>
      DestinationEightTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationEightTabContainerBloc>(
      create: (context) =>
          DestinationEightTabContainerBloc(DestinationEightTabContainerState(
        destinationEightTabContainerModelObj:
            DestinationEightTabContainerModel(),
      ))
            ..add(DestinationEightTabContainerInitialEvent()),
      child: DestinationEightTabContainerScreen(),
    );
  }
}

class DestinationEightTabContainerScreenState
    extends State<DestinationEightTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<DestinationEightTabContainerBloc,
        DestinationEightTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildFortyEight(context),
                  Expanded(
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          SizedBox(height: 16.v),
                          _buildTabview(context),
                          Expanded(
                            child: SizedBox(
                              height: 602.v,
                              child: TabBarView(
                                controller: tabviewController,
                                children: [
                                  DestinationEightPage.builder(context),
                                  DestinationEightPage.builder(context),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFortyEight(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup48,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 7.v),
          CustomAppBar(
            height: 32.v,
            leadingWidth: 145.h,
            leading: AppbarLeadingCircleimage(
              imagePath: ImageConstant.imgEllipse4,
              margin: EdgeInsets.only(
                right: 117.h,
                bottom: 5.v,
              ),
            ),
            title: Container(
              decoration: AppDecoration.column19,
              child: Column(
                children: [
                  AppbarSubtitleThree(
                    text: "msg_md_shamim_hossen".tr,
                    margin: EdgeInsets.only(left: 34.h),
                  ),
                  AppbarSubtitleFive(
                    text: "msg_27_vehicle_rental".tr,
                    margin: EdgeInsets.only(
                      left: 33.h,
                      right: 36.h,
                    ),
                  ),
                  Container(
                    height: 11.v,
                    width: 26.h,
                    margin: EdgeInsets.only(right: 119.h),
                    decoration: BoxDecoration(
                      color: appTheme.orange300,
                      borderRadius: BorderRadius.circular(
                        5.h,
                      ),
                    ),
                  ),
                  AppbarSubtitleSeven(
                    text: "lbl_4_9".tr,
                    margin: EdgeInsets.only(
                      left: 3.h,
                      right: 130.h,
                    ),
                  ),
                  SizedBox(height: 1.v),
                  AppbarTitleImage(
                    imagePath: ImageConstant.imgGradeBlack24dp,
                    margin: EdgeInsets.only(
                      left: 14.h,
                      right: 122.h,
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath:
                    ImageConstant.imgNotificationsBlack24dpSecondarycontainer,
                margin: EdgeInsets.fromLTRB(21.h, 3.v, 21.h, 4.v),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 40.v,
      width: 335.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.whiteA700,
        unselectedLabelColor: theme.colorScheme.primary,
        tabs: [
          Tab(
            child: Text(
              "lbl_active_trips".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_my_history".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Trip:
        return AppRoutes.homePageOnePage;
      case BottomBarEnum.Inbox:
        return "/";
      case BottomBarEnum.Account:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      case AppRoutes.homePageOnePage:
        return HomePageOnePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
