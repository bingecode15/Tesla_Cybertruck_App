import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tesla/screens/ac_screen/components/mode_option.dart';

import '../../../constant.dart';

class ModePanel extends StatelessWidget {
  const ModePanel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Mode",
          style: TextStyle(
            color: mainTextColor,
            fontWeight: FontWeight.w900,
            fontSize: 20.0,
          ),
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ModeOption(
              name: "Auto",
              icon: Text(
                "A",
                style: TextStyle(
                  color: mainTextColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 20.0,
                ),
              ),
            ),
            ModeOption(
              name: "Dry",
              icon: SvgPicture.asset("assets/svgs/page_three_dry.svg"),
            ),
            ModeOption(
              name: "Cool",
              icon: SvgPicture.asset("assets/svgs/page_three_cool.svg"),
            ),
            ModeOption(
              name: "Program",
              icon: SvgPicture.asset("assets/svgs/page_three_program.svg"),
            ),
          ],
        ),
      ],
    );
  }
}
