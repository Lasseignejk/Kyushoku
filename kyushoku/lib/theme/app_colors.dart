import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  final Color riceWhite;
  final Color soupYellow;
  final Color veggieGreen;
  final Color meatRed;
  final Color background;
  final Color text;

  const AppColors({
    required this.riceWhite,
    required this.soupYellow,
    required this.veggieGreen,
    required this.meatRed,
    required this.background,
    required this.text,
  });

  @override
  AppColors copyWith({
    Color? riceWhite,
    Color? soupYellow,
    Color? veggieGreen,
    Color? meatRed,
    Color? background,
    Color? text,
  }) {
    return AppColors(
      riceWhite: riceWhite ?? this.riceWhite,
      soupYellow: soupYellow ?? this.soupYellow,
      veggieGreen: veggieGreen ?? this.veggieGreen,
      meatRed: meatRed ?? this.meatRed,
      background: background ?? this.background,
      text: text ?? this.text,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      riceWhite: Color.lerp(riceWhite, other.riceWhite, t)!,
      soupYellow: Color.lerp(soupYellow, other.soupYellow, t)!,
      veggieGreen: Color.lerp(veggieGreen, other.veggieGreen, t)!,
      meatRed: Color.lerp(meatRed, other.meatRed, t)!,
      background: Color.lerp(background, other.background, t)!,
      text: Color.lerp(text, other.text, t)!,
    );
  }
}
