import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBluegray300 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray300,
        fontSize: 17.fSize,
      );
  static get bodyLargeBluegray300_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyLargeBluegray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodyLargeGray800 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray800,
      );
  static get bodyLargeLato => theme.textTheme.bodyLarge!.lato;
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      );
  static get bodyLargeWhiteA70017 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
      );
  static get bodyLargeWhiteA70017_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
      );
  static get bodyLargeWhiteA700_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBluegray300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyMediumBluegray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodyMediumGray10001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray10001,
        fontSize: 13.fSize,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumPrimary14 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodyMediumSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumWhiteA700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallBluegray90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodySmallBluegray9000110 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 10.fSize,
      );
  static get bodySmallGray10001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray10001,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 10.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallSecondaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 10.fSize,
      );
  static get bodySmallSecondaryContainer_1 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 8.fSize,
      );
  static get bodySmallWhiteA70010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.75),
        fontSize: 10.fSize,
      );
  static get bodySmallWhiteA70010_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
      );
  static get bodySmallWhiteA700_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Display text style
  static get displaySmall36 => theme.textTheme.displaySmall!.copyWith(
        fontSize: 36.fSize,
      );
  static get displaySmallRegular => theme.textTheme.displaySmall!.copyWith(
        fontSize: 34.fSize,
        fontWeight: FontWeight.w400,
      );
  // Noto text style
  static get notoSansWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 68.fSize,
        fontWeight: FontWeight.w400,
      ).notoSans;
  // Title text style
  static get titleLargeBluegray90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleLargeBluegray90001SemiBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeGray300 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray300,
        fontWeight: FontWeight.w800,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargePrimarySemiBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRedA200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.redA200,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSecondaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get titleLargeSecondaryContainerSemiBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeWhiteA700_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBluegray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBluegray90001_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleMediumGreen400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green400,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get notoSans {
    return copyWith(
      fontFamily: 'Noto Sans',
    );
  }
}
