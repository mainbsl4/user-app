import '../destination_sixteen_page/widgets/destinationsixteen_item_widget.dart';
import 'bloc/destination_sixteen_bloc.dart';
import 'models/destination_sixteen_model.dart';
import 'models/destinationsixteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';
import 'package:user_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DestinationSixteenPage extends StatefulWidget {
  const DestinationSixteenPage({Key? key})
      : super(
          key: key,
        );

  @override
  DestinationSixteenPageState createState() => DestinationSixteenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationSixteenBloc>(
      create: (context) => DestinationSixteenBloc(DestinationSixteenState(
        destinationSixteenModelObj: DestinationSixteenModel(),
      ))
        ..add(DestinationSixteenInitialEvent()),
      child: DestinationSixteenPage(),
    );
  }
}

class DestinationSixteenPageState extends State<DestinationSixteenPage>
    with AutomaticKeepAliveClientMixin<DestinationSixteenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              _buildDestinationSixteen(context),
              BlocSelector<DestinationSixteenBloc, DestinationSixteenState,
                  TextEditingController?>(
                selector: (state) => state.mediumController,
                builder: (context, mediumController) {
                  return CustomTextFormField(
                    controller: mediumController,
                    hintText: "lbl_medium".tr,
                    hintStyle: CustomTextStyles.titleMediumMedium,
                    textInputAction: TextInputAction.done,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 8.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.fillGray,
                    filled: true,
                    fillColor: appTheme.gray10001,
                  );
                },
              ),
              SizedBox(height: 17.v),
              _buildFeetTon(context),
              SizedBox(height: 15.v),
              _buildContinue(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDestinationSixteen(BuildContext context) {
    return BlocSelector<DestinationSixteenBloc, DestinationSixteenState,
        DestinationSixteenModel?>(
      selector: (state) => state.destinationSixteenModelObj,
      builder: (context, destinationSixteenModelObj) {
        return ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 2.0.v),
              child: SizedBox(
                width: 374.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: theme.colorScheme.secondaryContainer.withOpacity(0.2),
                ),
              ),
            );
          },
          itemCount:
              destinationSixteenModelObj?.destinationsixteenItemList.length ??
                  0,
          itemBuilder: (context, index) {
            DestinationsixteenItemModel model =
                destinationSixteenModelObj?.destinationsixteenItemList[index] ??
                    DestinationsixteenItemModel();
            return DestinationsixteenItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFeetTon(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 29.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup,
            height: 23.v,
            width: 50.h,
            margin: EdgeInsets.only(
              top: 10.v,
              bottom: 11.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: Row(
                    children: [
                      Text(
                        "msg_14_feet_3_5_ton".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgInfoBlack24dp,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 8.h,
                          top: 2.v,
                          bottom: 3.v,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "lbl_bid".tr,
                        style: CustomTextStyles.titleMediumBlack900,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.v),
                Text(
                  "msg_small_quantities".tr,
                  style: CustomTextStyles.bodySmallSecondaryContainer_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return SizedBox(
      height: 59.v,
      width: 374.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: 374.h,
              child: Divider(),
            ),
          ),
          CustomElevatedButton(
            width: 335.h,
            text: "lbl_continue".tr,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
