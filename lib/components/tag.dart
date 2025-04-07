import 'package:flutter/material.dart';
import 'package:kyushoku/theme/app_colors.dart';
import 'package:kyushoku/theme/text%20styles/paragraphs.dart';

class Tag extends StatelessWidget {
  const Tag({super.key, required this.tagText});
  final String tagText;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: colors.veggieGreen,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 3,
          horizontal: 15,
        ),
        child: Text(
          tagText,
          style: Paragraphs.small(context),
        ),
      ),
    );
  }
}
