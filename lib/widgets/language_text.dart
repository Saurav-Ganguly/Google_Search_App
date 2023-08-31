import 'package:flutter/material.dart';
import 'package:google_clone/color.dart';

class LanguageText extends StatelessWidget {
  final String title;
  const LanguageText({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    //https://api.flutter.dev/flutter/material/InkWell-class.html
    return InkWell(
      onTap: () {},
      child: Text(
        title,
        style: const TextStyle(
          color: blueColor,
        ),
      ),
    );
  }
}
