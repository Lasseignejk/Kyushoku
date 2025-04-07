import 'package:flutter/material.dart';
import 'package:kyushoku/components/loader.dart';
import 'package:kyushoku/theme/app_colors.dart';

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
        'name_english': 'Chicken Curry',
        'name_japanese': 'チキンカレー',
        'rating': 5.0,
        'date_added': '03-14-2025',
        'photo': '',
        'is_favorite': true,
        'tags': ['tasty', 'lunch', 'main dish']
      },
      {
        'name_english': 'Shishamo',
        'name_japanese': 'シシャモ',
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
            : Column(children: [
                Text('Home', style: Paragraphs.med(context)),
              ]);
  }
}
