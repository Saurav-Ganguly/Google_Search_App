import 'package:flutter/material.dart';
import 'package:google_clone/color.dart';
import 'package:google_clone/responsive/mobile_screen_layout.dart';
import 'package:google_clone/responsive/responsive_layout_screen.dart';
import 'package:google_clone/responsive/web_screen_layout.dart';
import 'package:google_clone/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //does not show the debug banner
      title: 'Google Search Clone',
      theme: ThemeData.dark().copyWith(
        //get all colors from the color.dart file
        scaffoldBackgroundColor: backgroundColor,
      ),
      // home: const ResponsiveLayoutScreen(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      home: const SearchScreen(),
    );
  }
}
