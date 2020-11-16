import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tesla/constant.dart';

class SliderPanel extends StatefulWidget {
  @override
  _SliderPanelState createState() => _SliderPanelState();
}

class _SliderPanelState extends State<SliderPanel> {
  double _currentSliderValue = 3;

  double calculateWidth(Size size) {
    double value = (size.width - 50) * (_currentSliderValue * 2 / 10) - 40;
    return value;
  }

  double calculateWidth2(Size size) {
    double base = 62 - ((_currentSliderValue - 1) * 4.5);

    double value = (size.width - 50) * (_currentSliderValue * 2 / 10) - base;
    return value;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Fan Speed",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
              color: mainTextColor,
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            height: 70.0,
            child: Stack(
              children: [
                SliderNumber(index: 1),
                SliderNumber(index: 2),
                SliderNumber(index: 3),
                SliderNumber(index: 4),
                SliderNumber(index: 5),
                Positioned.fill(
                  child: Image.asset("assets/images/slider_bottom.png"),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      "assets/images/slider_progress.png",
                      fit: BoxFit.fitWidth,
                      height: 4.0,
                      width: calculateWidth(size),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    transform: Matrix4.translationValues(0, 0, 0),
                    alignment: Alignment.centerLeft,
                    child: Container(
                      transform: Matrix4.translationValues(
                          calculateWidth2(size), 0, 0),
                      height: 30.0,
                      width: 30.0,
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          Positioned(
                            left: -23,
                            right: -23,
                            top: -23,
                            bottom: -23,
                            child: Image.asset("assets/images/slider_dot.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Slider(
                    activeColor: Colors.transparent,
                    inactiveColor: Colors.transparent,
                    value: _currentSliderValue,
                    min: 1,
                    max: 5,
                    divisions: 4,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SliderNumber extends StatelessWidget {
  final int index;

  const SliderNumber({Key key, this.index}) : super(key: key);

  double calculateWidth2(Size size) {
    double base = 62 - ((index - 1) * 4.5);

    double value = (size.width - 50) * (index * 2 / 10) - base;
    return value;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned.fill(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
        transform: Matrix4.translationValues(calculateWidth2(size), 0, 0),
        width: 30.0,
        height: 30.0,
        child: Text(
          index.toString(),
          style: TextStyle(
            color: lightTextColor,
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
