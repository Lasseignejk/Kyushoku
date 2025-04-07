import 'package:flutter/material.dart';

class Layouts {
  Widget page({required Widget child}) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, bottom: 80),
          child: child,
        ),
      ),
    );
  }
}
