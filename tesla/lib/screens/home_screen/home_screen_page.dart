import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:tesla/constant.dart';
import 'package:tesla/screens/ac_screen/ac_screen_page.dart';
import 'package:tesla/screens/home_screen/components/information_panel.dart';
import 'package:tesla/screens/home_screen/components/navigation_history.dart';
import 'package:tesla/screens/home_screen/components/status_panel.dart';
import 'package:tesla/screens/home_screen/components/title.dart';
import 'package:tesla/widgets/buttons/nav_button.dart';
import 'package:tesla/widgets/scaffolds/base_scaffold.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBarContent: [
        NavButton(
          width: 100.0,
          height: 100.0,
          child: SvgPicture.asset(
            "assets/svgs/page_two_user.svg",
            width: 17.0,
            height: 17.0,
          ),
        ),
        Expanded(
          child: HomeScreenTitle(
            upperTitle: "Tesla",
            title: "Cybertruck",
          ),
        ),
        NavButton(
          width: 100.0,
          height: 100.0,
          child: SvgPicture.asset(
            "assets/svgs/page_one_setting icon.svg",
            width: 17.0,
            height: 17.0,
          ),
        )
      ],
      body: SlidingUpPanel(
        minHeight: 120.0,
        maxHeight: MediaQuery.of(context).size.height * 0.85,
        color: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(bottom: 200.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 20.0),
                Image.asset(
                  "assets/images/page_two_car.png",
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                ),
                Container(
                  transform: Matrix4.translationValues(0, -40.0, 0),
                  child: StatusPanel(),
                ),
                Container(
                  transform: Matrix4.translationValues(0, -30.0, 0),
                  child: InformationPanel(),
                ),
                Container(
                  transform: Matrix4.translationValues(0, -30.0, 0),
                  child: NavigationHistory(),
                ),
              ],
            ),
          ),
        ),
        panel: ACScreenPage(),
      ),
    );
  }
}
