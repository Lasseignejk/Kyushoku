import 'package:flutter/material.dart';
import 'package:kyushoku/components/exception_caught.dart';
import 'package:kyushoku/components/loader.dart';
import 'package:kyushoku/components/meal_card.dart';
import 'package:kyushoku/fake_data/get_today.dart';
import 'package:kyushoku/theme/app_colors.dart';
import 'package:kyushoku/theme/text%20styles/headers.dart';
import 'package:kyushoku/theme/text%20styles/sub_headers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, dynamic> dataToday = {};
  bool isLoading = false;
  bool exceptionCaught = false;

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
    try {
      await Future.delayed(Duration(seconds: 2));
      setState(() {
        dataToday = getTodayData;
      });
    } catch (e) {
      print("ERROR: $e");
      setState(() {
        exceptionCaught = true;
      });
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    List<Map<String, dynamic>> dishes = dataToday['dishes'] ?? [];
    String diary = dataToday['diary'] ?? "";
    if (isLoading) {
      return Loader();
    }

    if (dataToday.isEmpty) {
      return Center(
        child: Text(
          "You haven't uploaded anything yet. Press the + button to get started!",
          style: SubHeaders.med(context),
          textAlign: TextAlign.center,
        ),
      );
    }

    if (exceptionCaught) {
      return ExceptionCaught();
    }
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Today's Menu", style: Headers.large(context)),
          SizedBox(height: 15),
          ListView.separated(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 25);
            },
            itemCount: dishes.length,
            itemBuilder: (context, index) {
              return MealCard(meal: dishes[index]);
            },
          ),
          // Column(
          //   children: uploads.map((upload) {
          //     return MealCard(meal: upload);
          //   }).toList(),
          // ),
          SizedBox(height: 20),
          Text("Diary", style: Headers.large(context)),
          SizedBox(height: 15),
          Text(diary),
        ],
      ),
    );
  }
}
