import '../destination_nineteen_page/widgets/destinationnineteen_item_widget.dart';
import 'bloc/destination_nineteen_bloc.dart';
import 'models/destination_nineteen_model.dart';
import 'models/destinationnineteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class DestinationNineteenPage extends StatelessWidget {
  const DestinationNineteenPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DestinationNineteenBloc>(
      create: (context) => DestinationNineteenBloc(DestinationNineteenState(
        destinationNineteenModelObj: DestinationNineteenModel(),
      ))
        ..add(DestinationNineteenInitialEvent()),
      child: DestinationNineteenPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              _buildDestinationNineteen(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDestinationNineteen(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: BlocSelector<DestinationNineteenBloc, DestinationNineteenState,
            DestinationNineteenModel?>(
          selector: (state) => state.destinationNineteenModelObj,
          builder: (context, destinationNineteenModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 16.v,
                );
              },
              itemCount: destinationNineteenModelObj
                      ?.destinationnineteenItemList.length ??
                  0,
              itemBuilder: (context, index) {
                DestinationnineteenItemModel model = destinationNineteenModelObj
                        ?.destinationnineteenItemList[index] ??
                    DestinationnineteenItemModel();
                return DestinationnineteenItemWidget(
                  model,
                  onTapRadio: (value) {
                    context.read<DestinationNineteenBloc>().add(
                        DestinationnineteenItemEvent(
                            index: index, radioGroup: value));
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
