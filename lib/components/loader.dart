import 'package:flutter/material.dart';
import 'package:kyushoku/theme/app_colors.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    return Center(
        child: CircularProgressIndicator(
      color: colors.veggieGreen,
    ));
  }
}
