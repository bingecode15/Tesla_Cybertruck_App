import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:tesla/constant.dart';
import 'package:tesla/screens/ac_screen/components/mode_option.dart';
import 'package:tesla/screens/ac_screen/components/mode_panel.dart';
import 'package:tesla/screens/ac_screen/components/slider_panel.dart';
import 'package:tesla/screens/ac_screen/components/temperature_slider.dart';
import 'package:tesla/screens/ac_screen/components/title_panel.dart';

class ACScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50.0),
          topLeft: Radius.circular(50.0),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: borderColors,
        ),
      ),
      child: Container(
        margin: EdgeInsets.all(2.0),
        padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50.0),
            topLeft: Radius.circular(50.0),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: conBackgroundColor,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: 60.0,
              height: 4.0,
              margin: EdgeInsets.fromLTRB(0, 12.0, 0, 12.0),
              decoration: BoxDecoration(
                color: darkColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(50.0),
                ),
              ),
            ),
            TitlePanel(),
            SizedBox(height: 40.0),
            Expanded(
              child: TemperatureSlider(),
            ),
            SizedBox(height: 20.0),
            SliderPanel(),
            ModePanel(),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
