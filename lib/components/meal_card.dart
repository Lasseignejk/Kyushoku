import 'package:flutter/material.dart';
import 'package:kyushoku/components/tag.dart';
import 'package:kyushoku/theme/app_colors.dart';
import 'package:kyushoku/theme/text%20styles/paragraphs.dart';

class MealCard extends StatefulWidget {
  const MealCard({super.key, required this.meal});
  final Map<String, dynamic> meal;

  @override
  State<MealCard> createState() => _MealCardState();
}

class _MealCardState extends State<MealCard> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    String englishName =
        widget.meal['name']['english'] ?? 'English name not given';
    String japaneseName =
        widget.meal['name']['japanese'] ?? 'Japanese name not given';
    List<String> mealTags = widget.meal['tags'] ?? [];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: colors.text)),
            width: double.infinity,
            height: 180,
          ),
        ),
        SizedBox(width: 15),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                englishName,
                style: Paragraphs.large(context),
              ),
              SizedBox(height: 5),
              Text(
                japaneseName,
                style: Paragraphs.small(context),
              ),
              SizedBox(height: 10),
              Wrap(
                spacing: 8, // horizontal space between tags
                runSpacing: 8, // vertical space between rows
                children: mealTags.map<Widget>((tag) {
                  return Tag(tagText: tag);
                }).toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
