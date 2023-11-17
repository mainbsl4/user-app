import 'package:flutter/material.dart';
import 'package:user_app/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitleTwo extends StatelessWidget {
  AppbarSubtitleTwo({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Container(
          width: 78.h,
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Text(
            text,
            style: CustomTextStyles.titleMediumPrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ),
    );
  }
}
