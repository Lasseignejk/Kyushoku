import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kyushoku/components/nav.dart';
import 'package:kyushoku/theme/app_colors.dart';
import 'package:kyushoku/views/calendar/calendar_page.dart';
import 'package:kyushoku/views/favorites/favorites_page.dart';
import 'package:kyushoku/views/home/home_page.dart';
import 'package:kyushoku/views/lists/lists_page.dart';
import 'package:kyushoku/views/settings/settings_page.dart';

class LayoutWrapper extends StatefulWidget {
  const LayoutWrapper({super.key});

  @override
  State<LayoutWrapper> createState() => _LayoutWrapperState();
}

class _LayoutWrapperState extends State<LayoutWrapper> {
  int currentPageIndex = 0;

  void onDestinationSelected(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    return Scaffold(
      bottomNavigationBar: Nav(
        currentPageIndex: currentPageIndex,
        onSelected: onDestinationSelected,
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colors.meatRed,
              ),
            ),
          ),
        ),
        title: Text(
          "itadakimashita",
          style: GoogleFonts.frederickaTheGreat(
              // fontSize: 20,
              ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 18,
        ),
        child: [
          HomePage(),
          FavoritesPage(),
          CalendarPage(),
          ListsPage(),
        ][currentPageIndex],
      ),
      floatingActionButton: currentPageIndex == 0
          ? FloatingActionButton(
              backgroundColor: colors.veggieGreen,
              foregroundColor: colors.text,
              shape: CircleBorder(),
              onPressed: () {
                print("pressed");
              },
              child: Icon(Icons.add),
            )
          : Container(),
    );
  }
}
