import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../../../constant.dart';

class TemperatureSlider extends StatefulWidget {
  const TemperatureSlider({
    Key key,
  }) : super(key: key);

  @override
  _TemperatureSliderState createState() => _TemperatureSliderState();
}

class _TemperatureSliderState extends State<TemperatureSlider> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(20.0, 20.0),
              color: progressShadowColor,
              blurRadius: 70.0,
            ),
            BoxShadow(
              offset: Offset(-20.0, -20.0),
              color: progressShadowColor2,
              blurRadius: 70.0,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: progressBarBackground,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(360.0),
          ),
        ),
        padding: EdgeInsets.all(10.0),
        child: SleekCircularSlider(
          appearance: CircularSliderAppearance(
            startAngle: 90.0,
            size: 180.0,
            customColors: CustomSliderColors(
              progressBarColors: progressBarColor,
              gradientStartAngle: 180.0,
              gradientEndAngle: 360.0,
              trackColor: progressBarTrackColor,
              dotColor: progressBarTrackColor,
            ),
            customWidths: CustomSliderWidths(
              trackWidth: 30.0,
              progressBarWidth: 30.0,
              shadowWidth: 30.0,
            ),
            spinnerMode: false,
            angleRange: 360.0,
          ),
          min: 16.0,
          max: 30.0,
          initialValue: 24.0,
          onChange: (double value) {},
          onChangeStart: (double startValue) {},
          onChangeEnd: (double endValue) {},
          innerWidget: (double value) {
            return Center(
              child: Container(
                width: 60.0,
                height: 50.0,
                child: Column(
                  children: [
                    Text(
                      value.toInt().toString() + "°C",
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.w900,
                        color: mainTextColor,
                      ),
                    ),
                    Text(
                      "Cooling...",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: mainTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
