import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/color.dart';
import 'package:google_clone/widgets/mobile/mobile_footer.dart';
import 'package:google_clone/widgets/search.dart';
import 'package:google_clone/widgets/translation_buttons.dart';
import 'package:google_clone/widgets/web/search_buttons.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor, //color.dart file
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
        ),
        title: SizedBox(
          width: size.width * 0.4,
          child: const DefaultTabController(
            length: 2,
            child: TabBar(
              labelColor: blueColor,
              unselectedLabelColor: Colors.grey,
              indicatorColor: blueColor,
              tabs: [
                Tab(
                  text: 'ALL',
                ),
                Tab(
                  text: 'IMAGES',
                ),
              ],
            ),
          ),
        ),
        actions: [
          const SizedBox(
            width: 3,
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
            width: 3,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Search(
                        searchBarLength: size.width * 0.8,
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
                ),
                const MobileFooter(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
