import 'package:flutter/material.dart';
import 'package:kyushoku/theme/app_colors.dart';

class Nav extends StatefulWidget {
  const Nav(
      {super.key, required this.currentPageIndex, required this.onSelected});

  final int currentPageIndex;
  final ValueChanged<int> onSelected;

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    return NavigationBar(
      backgroundColor: colors.soupYellow,
      onDestinationSelected: widget.onSelected,
      indicatorColor: Colors.amber,
      selectedIndex: widget.currentPageIndex,
      destinations: [
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.favorite),
          icon: Icon(Icons.favorite_border_outlined),
          label: 'Favorites',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.calendar_month),
          icon: Icon(Icons.calendar_month_outlined),
          label: 'Calendar',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.library_books),
          icon: Icon(Icons.library_books_outlined),
          label: 'Lists',
        ),
      ],
    );
  }
}
