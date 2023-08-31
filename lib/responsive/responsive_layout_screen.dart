import 'package:flutter/material.dart';

class ResponsiveLayoutScreen extends StatelessWidget {
  //get all the screens and to toggle between according to the screen width
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  const ResponsiveLayoutScreen(
      {super.key,
      required this.mobileScreenLayout,
      required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      //layout builder has constraints which can be used to return different widgets for different screen sizes
      if (constraints.maxWidth <= 768) {
        //mobile screen
        return mobileScreenLayout;
      }
      return webScreenLayout;
    });
  }
}
