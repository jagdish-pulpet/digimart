import 'package:flutter/cupertino.dart';

import '../utils/constraints.dart';
import 'custom_text.dart';

class FetchErrorText extends StatelessWidget {
  const FetchErrorText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: text,
        color: redColor,
        fontSize: 14.0,
      ),
    );
  }
}
