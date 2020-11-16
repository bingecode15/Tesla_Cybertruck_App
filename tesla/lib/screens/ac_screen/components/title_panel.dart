import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tesla/constant.dart';
import 'package:tesla/widgets/buttons/toggle_button.dart';

class TitlePanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "A/C is ON",
                style: TextStyle(
                  color: mainTextColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                "Tap to turn off or swipe up for a fast setup",
                style: TextStyle(
                  color: lightTextColor,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w900,
                ),
              )
            ],
          ),
          Positioned(
            top: -60.0,
            right: -55.0,
            child: ToggleButton(
              child: SvgPicture.asset("assets/svgs/power.svg"),
            ),
          ),
        ],
      ),
    );
  }
}
