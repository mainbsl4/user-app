import 'bloc/destination_eight_bloc.dart';
import 'models/destination_eight_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/custom_outlined_button.dart';
import 'package:user_app/widgets/custom_radio_button.dart';
import 'package:user_app/widgets/custom_switch.dart';
import 'package:user_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DestinationEightPage extends StatefulWidget {
  const DestinationEightPage({Key? key})
      : super(
          key: key,
        );

  @override
  DestinationEightPageState createState() => DestinationEightPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationEightBloc>(
      create: (context) => DestinationEightBloc(DestinationEightState(
        destinationEightModelObj: DestinationEightModel(),
      ))
        ..add(DestinationEightInitialEvent()),
      child: DestinationEightPage(),
    );
  }
}

class DestinationEightPageState extends State<DestinationEightPage>
    with
        TickerProviderStateMixin,
        AutomaticKeepAliveClientMixin<DestinationEightPage> {
  late TabController group118Controller;

  @override
  void initState() {
    super.initState();
    group118Controller = TabController(length: 2, vsync: this);
  }

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16.v),
                _buildContact(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContact(BuildContext context) {
    return Container(
      height: 306.v,
      width: 335.h,
      margin: EdgeInsets.only(
        left: 21.h,
        right: 18.h,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.fillGray10001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 41.v,
                              width: 32.h,
                              margin: EdgeInsets.only(bottom: 1.v),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse432x32,
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    radius: BorderRadius.circular(
                                      16.h,
                                    ),
                                    alignment: Alignment.topCenter,
                                  ),
                                  BlocSelector<DestinationEightBloc,
                                      DestinationEightState, bool?>(
                                    selector: (state) => state.isSelectedSwitch,
                                    builder: (context, isSelectedSwitch) {
                                      return CustomSwitch(
                                        alignment: Alignment.bottomCenter,
                                        value: isSelectedSwitch,
                                        onChange: (value) {
                                          context
                                              .read<DestinationEightBloc>()
                                              .add(ChangeSwitchEvent(
                                                  value: value));
                                        },
                                      );
                                    },
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text(
                                        "lbl_4_5".tr,
                                        style: CustomTextStyles
                                            .bodySmallWhiteA70010_1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_shohel_kha".tr,
                                    style:
                                        CustomTextStyles.bodyLargeBluegray90001,
                                  ),
                                  SizedBox(height: 2.v),
                                  Text(
                                    "msg_178_trips_complete".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        CustomOutlinedButton(
                          height: 31.v,
                          width: 104.h,
                          text: "lbl_contact".tr,
                          margin: EdgeInsets.only(
                            top: 4.v,
                            bottom: 6.v,
                          ),
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 8.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgCallblack24dp1,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.outlineBlueGrayTL4,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 38.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      height: 118.v,
                      width: 289.h,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: SizedBox(
                                height: 91.v,
                                child: VerticalDivider(
                                  width: 1.h,
                                  thickness: 1.v,
                                  color: appTheme.blueGray300,
                                  indent: 21.h,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgPlaceblack24dp1,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(bottom: 28.v),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: BlocSelector<
                                      DestinationEightBloc,
                                      DestinationEightState,
                                      TextEditingController?>(
                                    selector: (state) =>
                                        state.group122Controller,
                                    builder: (context, group122Controller) {
                                      return CustomTextFormField(
                                        controller: group122Controller,
                                        hintText: "msg_biplop_ai_masum".tr,
                                        hintStyle: theme.textTheme.titleMedium!,
                                        textInputAction: TextInputAction.done,
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .underLineSecondaryContainer,
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: 10.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text(
                                    "lbl_drop_off_point".tr,
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ),
                                SizedBox(height: 5.v),
                                Text(
                                  "msg_sonadango_khulna2".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: BlocSelector<DestinationEightBloc,
                                DestinationEightState, String?>(
                              selector: (state) => state.radioGroup,
                              builder: (context, radioGroup) {
                                return Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: CustomRadioButton(
                                    text: "lbl_pickup_point".tr,
                                    value: "lbl_pickup_point".tr ?? "",
                                    groupValue: radioGroup,
                                    onChange: (value) {
                                      context.read<DestinationEightBloc>().add(
                                          ChangeRadioButtonEvent(value: value));
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 36.v),
                  Container(
                    height: 40.v,
                    width: 310.h,
                    child: TabBar(
                      controller: group118Controller,
                      labelPadding: EdgeInsets.zero,
                      labelColor: appTheme.green400,
                      labelStyle: TextStyle(
                        fontSize: 16.fSize,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w600,
                      ),
                      unselectedLabelColor: appTheme.gray800,
                      unselectedLabelStyle: TextStyle(
                        fontSize: 16.fSize,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w600,
                      ),
                      indicator: BoxDecoration(
                        color: appTheme.green400.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(
                          20.h,
                        ),
                      ),
                      tabs: [
                        Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgCalendarMonthBlack24dp,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(bottom: 1.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 8.h,
                                  top: 3.v,
                                ),
                                child: Text(
                                  "msg_10_may_2023_06_30".tr,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Tab(
                          child: Container(
                            width: 87.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 11.h,
                              vertical: 8.v,
                            ),
                            decoration: AppDecoration.fillGreen.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder20,
                            ),
                            child: Text(
                              "lbl_00_12_00".tr,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 71.v),
              child: SizedBox(
                width: 335.h,
                child: Divider(
                  color: appTheme.gray300,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 73.v),
              child: SizedBox(
                width: 335.h,
                child: Divider(
                  color: appTheme.gray300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
