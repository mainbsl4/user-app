import 'bloc/destination_fifteen_tab_container_bloc.dart';
import 'models/destination_fifteen_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/presentation/destination_sixteen_page/destination_sixteen_page.dart';
import 'package:user_app/widgets/app_bar/appbar_image.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';

class DestinationFifteenTabContainerScreen extends StatefulWidget {
  const DestinationFifteenTabContainerScreen({Key? key}) : super(key: key);

  @override
  DestinationFifteenTabContainerScreenState createState() =>
      DestinationFifteenTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationFifteenTabContainerBloc>(
        create: (context) => DestinationFifteenTabContainerBloc(
            DestinationFifteenTabContainerState(
                destinationFifteenTabContainerModelObj:
                    DestinationFifteenTabContainerModel()))
          ..add(DestinationFifteenTabContainerInitialEvent()),
        child: DestinationFifteenTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class DestinationFifteenTabContainerScreenState
    extends State<DestinationFifteenTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<DestinationFifteenTabContainerBloc,
        DestinationFifteenTabContainerState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(height: 2.v),
                    _buildPickup(context),
                    SizedBox(
                        height: 673.v,
                        child: TabBarView(
                            controller: tabviewController,
                            children: [
                              DestinationSixteenPage.builder(context),
                              DestinationSixteenPage.builder(context),
                              DestinationSixteenPage.builder(context),
                              DestinationSixteenPage.builder(context)
                            ]))
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 38.v,
        leadingWidth: 47.h,
        leading: Container(
            margin: EdgeInsets.only(left: 19.h, top: 5.v, bottom: 4.v),
            padding: EdgeInsets.all(6.h),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder14),
            child: AppbarImage(
                imagePath: ImageConstant.imgArrowleft,
                onTap: () {
                  onTapArrowLeft(context);
                })),
        title: AppbarSubtitleOne(
            text: "lbl_vehicle_rental".tr,
            margin: EdgeInsets.only(left: 21.h)));
  }

  /// Section Widget
  Widget _buildPickup(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 7.v),
        decoration: AppDecoration.fillGray10001,
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(height: 5.v),
          Container(
              height: 32.v,
              width: 333.h,
              child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: appTheme.whiteA700,
                  labelStyle: TextStyle(
                      fontSize: 15.fSize,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w400),
                  unselectedLabelColor: theme.colorScheme.secondaryContainer,
                  unselectedLabelStyle: TextStyle(
                      fontSize: 16.fSize,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w400),
                  indicatorPadding: EdgeInsets.all(0.5.h),
                  indicator: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(15.h)),
                  tabs: [
                    Tab(child: Text("lbl_pickup".tr)),
                    Tab(child: Text("lbl_medium".tr)),
                    Tab(child: Text("lbl_large".tr)),
                    Tab(child: Text("lbl_trailer".tr))
                  ]))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
