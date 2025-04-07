import 'package:flutter/material.dart';
import 'package:kyushoku/theme/app_colors.dart';

class Paragraphs {
  // Private helper to get AppColors from the theme
  static AppColors _getAppColors(BuildContext context) {
    return Theme.of(context).extension<AppColors>()!;
  }

  static TextStyle xSmall(BuildContext context, {Color? color}) {
    final colors = _getAppColors(context);
    return TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: color ?? colors.text);
  }

  static TextStyle small(BuildContext context, {Color? color}) {
    final colors = _getAppColors(context);
    return TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: color ?? colors.text);
  }

  static TextStyle med(BuildContext context, {Color? color}) {
    final colors = _getAppColors(context);
    return TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: color ?? colors.text);
  }

  static TextStyle large(BuildContext context, {Color? color}) {
    final colors = _getAppColors(context);
    return TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: color ?? colors.text);
  }

  static TextStyle xLarge(BuildContext context, {Color? color}) {
    final colors = _getAppColors(context);
    return TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: color ?? colors.text);
  }
}
