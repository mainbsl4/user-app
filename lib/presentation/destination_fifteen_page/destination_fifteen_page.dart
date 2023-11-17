import '../destination_fifteen_page/widgets/feetton_item_widget.dart';
import '../destination_fifteen_page/widgets/feettonopen_item_widget.dart';
import 'bloc/destination_fifteen_bloc.dart';
import 'models/destination_fifteen_model.dart';
import 'models/feetton_item_model.dart';
import 'models/feettonopen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DestinationFifteenPage extends StatefulWidget {
  const DestinationFifteenPage({Key? key})
      : super(
          key: key,
        );

  @override
  DestinationFifteenPageState createState() => DestinationFifteenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationFifteenBloc>(
      create: (context) => DestinationFifteenBloc(DestinationFifteenState(
        destinationFifteenModelObj: DestinationFifteenModel(),
      ))
        ..add(DestinationFifteenInitialEvent()),
      child: DestinationFifteenPage(),
    );
  }
}

class DestinationFifteenPageState extends State<DestinationFifteenPage>
    with AutomaticKeepAliveClientMixin<DestinationFifteenPage> {
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
              _buildFeettonOpen(context),
              SizedBox(height: 18.v),
              _buildFeetTonCovered(context),
              SizedBox(height: 15.v),
              _buildMedium(context),
              SizedBox(height: 17.v),
              _buildFeetTon(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFeettonOpen(BuildContext context) {
    return BlocSelector<DestinationFifteenBloc, DestinationFifteenState,
        DestinationFifteenModel?>(
      selector: (state) => state.destinationFifteenModelObj,
      builder: (context, destinationFifteenModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
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
              destinationFifteenModelObj?.feettonopenItemList.length ?? 0,
          itemBuilder: (context, index) {
            FeettonopenItemModel model =
                destinationFifteenModelObj?.feettonopenItemList[index] ??
                    FeettonopenItemModel();
            return FeettonopenItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFeetTonCovered(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 30.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroupOrange30025x50,
            height: 25.v,
            width: 50.h,
            margin: EdgeInsets.only(
              top: 9.v,
              bottom: 10.v,
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
                        "msg_12_feet_2_ton_covered".tr,
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
  Widget _buildMedium(BuildContext context) {
    return SizedBox(
      height: 41.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: double.maxFinite,
              child: Divider(),
            ),
          ),
          BlocSelector<DestinationFifteenBloc, DestinationFifteenState,
              TextEditingController?>(
            selector: (state) => state.mediumController,
            builder: (context, mediumController) {
              return CustomTextFormField(
                width: 374.h,
                controller: mediumController,
                hintText: "lbl_medium".tr,
                hintStyle: CustomTextStyles.titleMediumMedium,
                textInputAction: TextInputAction.done,
                alignment: Alignment.center,
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
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFeetTon(BuildContext context) {
    return BlocSelector<DestinationFifteenBloc, DestinationFifteenState,
        DestinationFifteenModel?>(
      selector: (state) => state.destinationFifteenModelObj,
      builder: (context, destinationFifteenModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
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
          itemCount: destinationFifteenModelObj?.feettonItemList.length ?? 0,
          itemBuilder: (context, index) {
            FeettonItemModel model =
                destinationFifteenModelObj?.feettonItemList[index] ??
                    FeettonItemModel();
            return FeettonItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
