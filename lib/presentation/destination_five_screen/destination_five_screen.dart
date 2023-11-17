import '../destination_five_screen/widgets/destinationfive_item_widget.dart';
import 'bloc/destination_five_bloc.dart';
import 'models/destination_five_model.dart';
import 'models/destinationfive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';
import 'package:user_app/widgets/app_bar/appbar_image.dart';
import 'package:user_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:user_app/widgets/app_bar/custom_app_bar.dart';
import 'package:user_app/widgets/custom_elevated_button.dart';
import 'package:user_app/widgets/custom_text_form_field.dart';

class DestinationFiveScreen extends StatelessWidget {
  const DestinationFiveScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationFiveBloc>(
        create: (context) => DestinationFiveBloc(DestinationFiveState(
            destinationFiveModelObj: DestinationFiveModel()))
          ..add(DestinationFiveInitialEvent()),
        child: DestinationFiveScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildArrowLeft(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.h, vertical: 22.v),
                      child: Column(children: [
                        _buildDestinationFive(context),
                        SizedBox(height: 21.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("lbl_note".tr,
                                style:
                                    CustomTextStyles.titleLargeBluegray90001)),
                        SizedBox(height: 12.v),
                        BlocSelector<DestinationFiveBloc, DestinationFiveState,
                                TextEditingController?>(
                            selector: (state) => state.addanoteController,
                            builder: (context, addanoteController) {
                              return CustomTextFormField(
                                  controller: addanoteController,
                                  hintText: "lbl_add_a_note".tr,
                                  textInputAction: TextInputAction.done,
                                  maxLines: 4,
                                  borderDecoration: TextFormFieldStyleHelper
                                      .outlineBlueGrayTL101,
                                  filled: true,
                                  fillColor: appTheme.whiteA700);
                            }),
                        SizedBox(height: 5.v)
                      ]))
                ])),
            bottomNavigationBar: _buildReview(context)));
  }

  /// Section Widget
  Widget _buildArrowLeft(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5.v),
        decoration: AppDecoration.fillWhiteA,
        child: CustomAppBar(
            leadingWidth: 47.h,
            leading: Container(
                margin: EdgeInsets.only(left: 19.h),
                padding: EdgeInsets.all(6.h),
                decoration: AppDecoration.fillGray
                    .copyWith(borderRadius: BorderRadiusStyle.circleBorder14),
                child: AppbarImage(
                    imagePath: ImageConstant.imgArrowleft,
                    onTap: () {
                      onTapArrowLeft(context);
                    })),
            title: AppbarSubtitleOne(
                text: "lbl_additional".tr,
                margin: EdgeInsets.only(left: 21.h))));
  }

  /// Section Widget
  Widget _buildDestinationFive(BuildContext context) {
    return BlocSelector<DestinationFiveBloc, DestinationFiveState,
            DestinationFiveModel?>(
        selector: (state) => state.destinationFiveModelObj,
        builder: (context, destinationFiveModelObj) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 5.v);
              },
              itemCount:
                  destinationFiveModelObj?.destinationfiveItemList.length ?? 0,
              itemBuilder: (context, index) {
                DestinationfiveItemModel model =
                    destinationFiveModelObj?.destinationfiveItemList[index] ??
                        DestinationfiveItemModel();
                return DestinationfiveItemWidget(model,
                    changeCheckBox: (value) {
                  context.read<DestinationFiveBloc>().add(
                      DestinationfiveItemEvent(
                          index: index, pickupcarOne: value));
                });
              });
        });
  }

  /// Section Widget
  Widget _buildReview(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_review".tr,
        margin: EdgeInsets.only(left: 20.h, right: 19.h, bottom: 56.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
