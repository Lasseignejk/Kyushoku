import 'package:flutter/material.dart';
import 'package:kyushoku/theme/app_colors.dart';

class Headers {
  // Private helper to get AppColors from the theme
  static AppColors _getAppColors(BuildContext context) {
    return Theme.of(context).extension<AppColors>()!;
  }

  static TextStyle xSmall(BuildContext context, {Color? color}) {
    final colors = _getAppColors(context);
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: color ?? colors.text,
    );
  }

  static TextStyle small(BuildContext context, {Color? color}) {
    final colors = _getAppColors(context);
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: color ?? colors.text,
    );
  }

  static TextStyle med(BuildContext context, {Color? color}) {
    final colors = _getAppColors(context);
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: color ?? colors.text,
    );
  }

  static TextStyle large(BuildContext context, {Color? color}) {
    final colors = _getAppColors(context);
    return TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: color ?? colors.text,
    );
  }

  static TextStyle xLarge(BuildContext context, {Color? color}) {
    final colors = _getAppColors(context);
    return TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: color ?? colors.text,
    );
  }
}
