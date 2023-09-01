import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/color.dart';
import 'package:google_clone/widgets/search.dart';
import 'package:google_clone/widgets/translation_buttons.dart';
import 'package:google_clone/widgets/web/search_buttons.dart';
import 'package:google_clone/widgets/web/web_footer.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor, //color.dart file
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Gmail',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Images',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            //to show Svg we need to install flutter_svg package
            //and use it in this way
            icon: SvgPicture.asset(
              'assets/images/more-apps.svg',
              colorFilter: const ColorFilter.mode(
                primaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            //NEW PATTERN
            //vertial padding of 10 and then right padding of 10
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ).copyWith(
              right: 10,
            ),

            //all the different types of buttons in flutter
            //https://www.geeksforgeeks.org/flutter-working-with-material-button/

            child: MaterialButton(
              color: const Color(0xff1A73EB),
              onPressed: () {},
              child: const Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: size.height * 0.25,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Search(
                      searchBarLength: size.width * 0.4,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SearchButtons(),
                    const SizedBox(
                      height: 20,
                    ),
                    const TranslationButtons(),
                  ],
                ),
                const WebFooter(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
