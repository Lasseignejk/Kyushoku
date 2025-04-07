import 'package:flutter/material.dart';
import 'package:kyushoku/theme/text%20styles/headers.dart';

import 'package:kyushoku/theme/text%20styles/paragraphs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> uploads = [];
  @override
  Widget build(BuildContext context) {
    return uploads.isEmpty
        ? Center(
            child: Text(
            "You haven't uploaded anything yet!",
            style: Headers.med(context),
            textAlign: TextAlign.center,
          ))
        : Column(children: [
            Text('Home', style: Paragraphs.med(context)),
          ]);
  }
}
