import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tesla/models/info.dart';

import '../../../constant.dart';

class InformationCard extends StatelessWidget {
  Size boxSize = Size(120.0, 120.0);
  final Info info;
  double factorsReduce = 0;

  InformationCard(this.info) {
    factorsReduce = -(boxSize.width) / 3;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: boxSize.width,
      height: boxSize.height,
      margin: EdgeInsets.only(left: 25.0),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Positioned(
            top: factorsReduce,
            right: factorsReduce,
            left: factorsReduce,
            bottom: factorsReduce,
            child: Image.asset(info.bgImage),
          ),
          Positioned(
            bottom: 35.0,
            right: 15.0,
            left: 15.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  info.name,
                  style: TextStyle(
                    color: mainTextColor,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 6.0),
                Text(
                  info.description,
                  style: TextStyle(
                    color: lightTextColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
