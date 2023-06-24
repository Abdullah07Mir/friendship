import 'package:flutter/material.dart';
import 'package:friendship/screens/Profile_Screen/profile_screen.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_svg/svg.dart';

import '../Home_Screen/home_screen.dart';
import '../Inbox_Screen/inbox_screen.dart';
import '../Match_Screen/match_screen.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const HomeScreen(),
     MatchScreen(),
    const InboxScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }
  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xff447FE7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ?
                    Icon(
              Icons.home_filled,
              color: Colors.white,
              size: 35,
            )

                : const Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ?  SvgPicture.asset("assets/icons/heart.svg")
                : SvgPicture.asset("assets/icons/heartoutlined.svg"),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? SvgPicture.asset("assets/icons/messagefavorite.svg",color: Colors.white,)
                : SvgPicture.asset("assets/icons/messagefavorite.svg"),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? SvgPicture.asset("assets/icons/profilecirclefill.svg")
                : SvgPicture.asset("assets/icons/profilecircle.svg")
          ),
        ],
      ),
    );
  }
}
