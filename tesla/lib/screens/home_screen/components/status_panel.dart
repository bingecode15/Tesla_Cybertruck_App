import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tesla/screens/home_screen/components/status_card.dart';

import '../../../constant.dart';

class StatusPanel extends StatelessWidget {
  const StatusPanel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Status",
            style: TextStyle(
              fontSize: 20.0,
              color: mainTextColor,
            ),
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: StatusCard(
                  title: "Battery",
                  value: "54%",
                  icon: "assets/svgs/battery.svg",
                ),
              ),
              Expanded(
                child: StatusCard(
                  title: "Range",
                  value: "297km",
                  icon: "assets/svgs/range.svg",
                ),
              ),
              Expanded(
                child: StatusCard(
                  title: "Temperature",
                  value: "27°C",
                  icon: "assets/svgs/temperature.svg",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
