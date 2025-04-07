import 'package:flutter/material.dart';
import 'package:kyushoku/components/layouts/main_wrapper.dart';
import 'package:kyushoku/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Itadakimashita',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const LayoutWrapper(),
    );
  }
}
