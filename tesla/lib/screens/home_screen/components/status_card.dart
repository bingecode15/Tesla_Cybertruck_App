import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';

class StatusCard extends StatelessWidget {
  final String title, icon, value;

  const StatusCard({
    Key key,
    this.title,
    this.icon,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 3.5, right: 6.0),
              child: SvgPicture.asset(
                icon,
                color: lightTextColor,
                width: 11.0,
                height: 11.0,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.normal,
                color: lightTextColor,
                textBaseline: TextBaseline.alphabetic,
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(11.0 + 3.0, 5.0, 5.0, 5.0),
          child: Text(
            value,
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w900,
              color: mainTextColor,
              textBaseline: TextBaseline.alphabetic,
            ),
          ),
        ),
      ],
    );
  }
}
