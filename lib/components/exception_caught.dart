import 'package:flutter/material.dart';
import 'package:kyushoku/theme/text%20styles/headers.dart';

class ExceptionCaught extends StatelessWidget {
  const ExceptionCaught({super.key, this.errorText});
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Text(
            'Oops!',
            style: Headers.large(context),
          ),
          SizedBox(height: 15),
          Text(
            errorText ??
                "It looks like there was a problem fetching your information. Please try again.",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
