import 'package:flutter/material.dart';
import 'package:kyushoku/components/loader.dart';
import 'package:kyushoku/components/meal_card.dart';
import 'package:kyushoku/theme/app_colors.dart';
import 'package:kyushoku/theme/text%20styles/headers.dart';

import 'package:kyushoku/theme/text%20styles/paragraphs.dart';
import 'package:kyushoku/theme/text%20styles/sub_headers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> uploads = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchUploads();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> fetchUploads() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(Duration(seconds: 2));
    List<Map<String, dynamic>> fakeData = [
      {
        'name': {
          'english': 'Chicken Curry',
          'japanese': 'チキンカレー',
        },
        'rating': 5.0,
        'date_added': '03-14-2025',
        'photo': '',
        'is_favorite': true,
        'tags': ['tasty', 'lunch', 'main dish']
      },
      {
        'name': {'english': 'Shishamo', 'japanese': 'シシャモ'},
        'rating': 0.5,
        'date_added': '03-29-2025',
        'photo': '',
        'is_favorite': false,
        'tags': ['never again', 'lunch', 'main dish']
      },
    ];
    setState(() {
      uploads = fakeData;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    return isLoading
        ? Loader()
        : uploads.isEmpty
            ? Center(
                child: Text(
                "You haven't uploaded anything yet. Press the + button to get started!",
                style: SubHeaders.med(context),
                textAlign: TextAlign.center,
              ))
            : Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Today's Menu", style: Headers.large(context)),
                    SizedBox(height: 20),
                    ListView.separated(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 25);
                      },
                      itemCount: uploads.length,
                      itemBuilder: (context, index) {
                        return MealCard(meal: uploads[index]);
                      },
                    ),
                    // Column(
                    //   children: uploads.map((upload) {
                    //     return MealCard(meal: upload);
                    //   }).toList(),
                    // ),
                    SizedBox(height: 20),
                    Text("Diary", style: Headers.large(context)),
                  ],
                ),
              );
  }
}
